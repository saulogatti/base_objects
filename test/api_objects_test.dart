import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  final instant = ApiInstant.parse('2026-09-13T14:30:00-03:00');

  group('Scaled amounts', () {
    test('money normalizes scale 2 and rejects numbers and extra digits', () {
      expect(MoneyAmount.parse('89.9').toJson(), '89.90');
      expect(MoneyAmount.parse('10').toJson(), '10.00');
      expect(MoneyAmount.parse('-0.5').toJson(), '-0.50');
      expect(MoneyAmount.parse('0').toJson(), '0.00');
      expect(() => MoneyAmount.parse('89.901'), throwsFormatException);
      expect(() => MoneyAmount.fromJson(89.9), throwsFormatException);
      expect(QuantityAmount.parse('2').toJson(), '2.000');
      expect(PercentAmount.parse('3.5').toJson(), '3.500');
    });
  });

  group('Address, page and error', () {
    test('keeps null address fields', () {
      const address = Address(street: 'Rua das Flores, 120', zipCode: '01001000');
      final json = address.toJson();
      expect(json['neighborhood'], isNull);
      expect(Address.fromJson(json).city, isNull);
    });

    test('page round-trips items', () {
      const page = ApiPage<ProductCategory>(
        items: [ProductCategory(name: 'Capas')],
        total: 1,
        limit: 30,
        offset: 0,
      );
      final decoded = ApiPage<ProductCategory>.fromJson(
        page.toJson((item) => item.toJson()),
        (json) => ProductCategory.fromJson(json! as Map<String, dynamic>),
      );
      expect(decoded.total, 1);
      expect(decoded.items.single.name, 'Capas');
    });

    test('error envelope keeps integer details', () {
      const response = ApiErrorResponse(
        error: ApiError(
          code: 'INSUFFICIENT_STOCK',
          message: 'Saldo insuficiente.',
          requestId: '0192',
          details: {'productId': '0192', 'available': 2, 'requested': 3},
        ),
      );
      final error = ApiErrorResponse.fromJson(response.toJson()).error;
      expect(error.details?['available'], 2);
      expect(error.code, 'INSUFFICIENT_STOCK');
    });
  });

  group('Auth and installation', () {
    test('login response keeps nullable store for the owner', () {
      final session = AuthSession(
        accessToken: 'eyJ',
        accessTokenExpiresAt: ApiInstant.parse('2026-09-13T14:45:00-03:00'),
        refreshToken: 'rt_7Qm',
        refreshTokenExpiresAt: ApiInstant.parse('2026-10-13T14:30:00Z'),
        session: UserSession(
          user: User(
            id: '0192',
            name: 'Maria Souza',
            email: 'gerente@loja.com',
            phone: '11999990000',
            isActive: true,
            isSuperadmin: false,
            createdAt: instant,
            updatedAt: instant,
          ),
          availableStores: const [],
        ),
      );
      final json = session.toJson();
      final body = json['session']! as Map<String, dynamic>;
      expect(body['activeStore'], isNull);
      expect(body['membership'], isNull);
      expect(json['accessTokenExpiresAt'], '2026-09-13T17:45:00.000Z');
      expect(AuthSession.fromJson(json).session.user.email, 'gerente@loja.com');
    });

    test('installation body has no stores and no password on the user', () {
      const request = InstallationRequest(
        systemUserData: SystemUserData(
          name: 'João Proprietário',
          email: 'joao@loja.com',
          phone: '11988887777',
          systemKey: 'CHAVE-DO-CLIENTE',
          description: 'Rede Celular Center',
        ),
        administratorPassword: 'secret',
      );
      final json = request.toJson();
      expect(json.containsKey('stores'), isFalse);
      expect(json['administratorPassword'], 'secret');
      final data = SystemUserData.fromJson(json['systemUserData']! as Map<String, dynamic>);
      expect(data.toJson().containsKey('password'), isFalse);
    });
  });

  group('Shapes that differ from the app', () {
    test('customer cpf is nullable', () {
      const customer = Customer(name: 'Ana', isActive: true);
      expect(customer.toJson()['cpf'], isNull);
      expect(Customer.fromJson(customer.toJson()).cpf, isNull);
    });

    test('invoice uses supplierId and money strings', () {
      final draft = InvoiceDraft(
        type: InvoiceType.exit,
        customerId: 'c1',
        discount: MoneyAmount.parse('0'),
        items: [
          InvoiceItemDraft(
            id: 'i1',
            productId: 'p1',
            description: 'Película',
            quantity: QuantityAmount.parse('2'),
            unitPrice: MoneyAmount.parse('39.9'),
            discount: MoneyAmount.parse('0'),
          ),
        ],
      );
      final json = draft.toJson();
      expect(json.containsKey('companyId'), isFalse);
      expect(json['supplierId'], isNull);
      final item = (json['items']! as List<dynamic>).single as Map<String, dynamic>;
      expect(item['quantity'], '2.000');
      expect(item['unitPrice'], '39.90');
      expect(InvoiceDraft.fromJson(json).type, InvoiceType.exit);
    });

    test('analytics money is a string and audit id is an int', () {
      final point = AnalyticsPoint(
        label: '2026-09-12',
        salesValue: MoneyAmount.parse('3120.40'),
        purchaseValue: MoneyAmount.parse('1500'),
        productsCount: 37,
      );
      expect(point.toJson()['salesValue'], '3120.40');

      final entry = AuditEntry(
        id: 88121,
        actorName: 'Maria Souza',
        action: AuditAction.cancel,
        entity: 'invoice',
        entityId: '0192',
        summary: 'Cancelou a nota 1042',
        beforeData: const {'status': 'confirmed'},
        afterData: const {'status': 'cancelled'},
        createdAt: instant,
      );
      final json = entry.toJson();
      expect(json['id'], 88121);
      expect(json['action'], 'cancel');
      expect(json['beforeData'], {'status': 'confirmed'});
      expect(AuditEntry.fromJson(json).id, 88121);
    });

    test('receivable keeps cashMovementId and isOverdue', () {
      final receivable = Receivable(
        id: 'r1',
        storeId: 's1',
        customerId: 'c1',
        customerName: 'Ana Cliente',
        installmentNumber: 1,
        amount: MoneyAmount.parse('14.90'),
        dueDate: CalendarDate.parse('2026-10-13'),
        paidAmount: MoneyAmount.parse('0'),
        isOverdue: false,
      );
      expect(receivable.toJson()['cashMovementId'], isNull);
      expect(receivable.toJson()['isOverdue'], isFalse);
      expect(receivable.toJson()['dueDate'], '2026-10-13');
    });
  });

  group('Service order and cash', () {
    test('stores server flags and snake_case status', () {
      final order = ServiceOrder(
        id: 'os1',
        storeId: 's1',
        number: 12,
        customerId: 'c1',
        deviceId: 'd1',
        status: ServiceOrderStatus.awaitingApproval,
        reportedIssue: 'Tela',
        hasBackup: false,
        totalValue: MoneyAmount.parse('0'),
        partsTotal: MoneyAmount.parse('0'),
        laborTotal: MoneyAmount.parse('0'),
        warrantyDays: 90,
        isOverdue: true,
        isUnderWarranty: false,
        items: const [],
        createdAt: instant,
        updatedAt: instant,
        promisedDate: CalendarDate.parse('2026-09-16'),
      );
      final json = order.toJson();
      expect(json['status'], 'awaiting_approval');
      expect(json['isOverdue'], isTrue);
      expect(json['promisedDate'], '2026-09-16');
      expect(json['unlockCode'], isNull);
      expect(ServiceOrder.fromJson(json).status, ServiceOrderStatus.awaitingApproval);
    });

    test('cash adjustment direction is in or out', () {
      final movement = RecordCashMovementRequest(
        id: 'm1',
        type: CashMovementType.adjustment,
        amount: MoneyAmount.parse('200'),
        reason: 'Acerto',
        direction: CashAdjustmentDirection.inward,
      );
      expect(movement.toJson()['direction'], 'in');
      expect(movement.toJson()['type'], 'adjustment');
      expect(
        RecordCashMovementRequest.fromJson(movement.toJson()).direction,
        CashAdjustmentDirection.inward,
      );
    });
  });
}
