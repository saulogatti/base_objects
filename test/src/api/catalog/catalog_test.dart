import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Catalog', () {
    test('CategoryUsage toJson and fromJson', () {
      const usage = CategoryUsage(inUse: true, productCount: 10);
      final json = usage.toJson();
      expect(json['inUse'], isTrue);
      expect(json['productCount'], 10);
      final fromJson = CategoryUsage.fromJson(json);
      expect(fromJson.inUse, isTrue);
      expect(fromJson.productCount, 10);
      expect(CategoryUsage.schema, isNotEmpty);
    });

    test('LaborService toJson and fromJson', () {
      final service = LaborService(
        id: '1',
        code: 'srv-01',
        name: 'Screen Repair',
        description: 'Repair broken screen',
        price: MoneyAmount.parse('150.00'),
        estimatedHours: HoursAmount.parse('2.5'),
        warrantyDays: 90,
        isActive: true,
        createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
        updatedAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
      );
      final json = service.toJson();
      expect(json['id'], '1');
      expect(json['code'], 'srv-01');
      expect(json['name'], 'Screen Repair');
      expect(json['description'], 'Repair broken screen');
      expect(json['price'], '150.00');
      expect(json['estimatedHours'], '2.50');
      expect(json['warrantyDays'], 90);
      expect(json['isActive'], isTrue);
      expect((json['createdAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');
      expect((json['updatedAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');

      final fromJson = LaborService.fromJson(json);
      expect(fromJson.id, '1');
      expect(fromJson.code, 'srv-01');
      expect(fromJson.name, 'Screen Repair');
      expect(fromJson.description, 'Repair broken screen');
      expect(fromJson.price, MoneyAmount.parse('150.00'));
      expect(fromJson.estimatedHours, HoursAmount.parse('2.5'));
      expect(fromJson.warrantyDays, 90);
      expect(fromJson.isActive, isTrue);
      expect(fromJson.createdAt?.value, DateTime.utc(2026, 10, 2));
      expect(fromJson.updatedAt?.value, DateTime.utc(2026, 10, 2));
    });

    test('ProductCategory toJson and fromJson', () {
      final category = ProductCategory(
        id: '1',
        name: 'Accessories',
        description: 'Phone accessories',
        createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
        updatedAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
      );
      final json = category.toJson();
      expect(json['id'], '1');
      expect(json['name'], 'Accessories');
      expect(json['description'], 'Phone accessories');
      expect((json['createdAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');
      expect((json['updatedAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');

      final fromJson = ProductCategory.fromJson(json);
      expect(fromJson.id, '1');
      expect(fromJson.name, 'Accessories');
      expect(fromJson.description, 'Phone accessories');
      expect(fromJson.createdAt?.value, DateTime.utc(2026, 10, 2));
      expect(fromJson.updatedAt?.value, DateTime.utc(2026, 10, 2));
    });

    test('ProductCodeAvailability toJson and fromJson', () {
      const availability = ProductCodeAvailability(available: true);
      final json = availability.toJson();
      expect(json['available'], isTrue);
      final fromJson = ProductCodeAvailability.fromJson(json);
      expect(fromJson.available, isTrue);
    });

    test('ProductCodeIssued toJson and fromJson', () {
      const issued = ProductCodeIssued(code: 'PRD-001');
      final json = issued.toJson();
      expect(json['code'], 'PRD-001');
      final fromJson = ProductCodeIssued.fromJson(json);
      expect(fromJson.code, 'PRD-001');
    });

    test('ProductData toJson and fromJson', () {
      final product = ProductData(
        id: '1',
        code: 'PRD-001',
        barcode: '123456789',
        name: 'Phone Case',
        description: 'Silicone case',
        categoryId: '2',
        costPrice: MoneyAmount.parse('5.00'),
        salePrice: MoneyAmount.parse('15.00'),
        isActive: true,
        createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
        updatedAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
      );
      final json = product.toJson();
      expect(json['id'], '1');
      expect(json['code'], 'PRD-001');
      expect(json['barcode'], '123456789');
      expect(json['name'], 'Phone Case');
      expect(json['description'], 'Silicone case');
      expect(json['categoryId'], '2');
      expect(json['costPrice'], '5.00');
      expect(json['salePrice'], '15.00');
      expect(json['isActive'], isTrue);
      expect((json['createdAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');
      expect((json['updatedAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');

      final fromJson = ProductData.fromJson(json);
      expect(fromJson.id, '1');
      expect(fromJson.code, 'PRD-001');
      expect(fromJson.barcode, '123456789');
      expect(fromJson.name, 'Phone Case');
      expect(fromJson.description, 'Silicone case');
      expect(fromJson.categoryId, '2');
      expect(fromJson.costPrice, MoneyAmount.parse('5.00'));
      expect(fromJson.salePrice, MoneyAmount.parse('15.00'));
      expect(fromJson.isActive, isTrue);
      expect(fromJson.createdAt?.value, DateTime.utc(2026, 10, 2));
      expect(fromJson.updatedAt?.value, DateTime.utc(2026, 10, 2));
    });

    test('StoreProduct toJson and fromJson', () {
      final product = ProductData(
        code: 'PRD-001',
        name: 'Phone Case',
        salePrice: MoneyAmount.parse('15.00'),
        isActive: true,
      );
      final storeProduct = StoreProduct(
        storeId: 's1',
        product: product,
        salePrice: MoneyAmount.parse('12.00'),
        hasStoreOverride: true,
        stockQuantity: 10,
        minStock: 5,
        isActive: true,
        needsRestock: false,
      );
      final json = storeProduct.toJson();
      expect(json['storeId'], 's1');
      expect((json['product'] as Map)['code'], 'PRD-001');
      expect(json['salePrice'], '12.00');
      expect(json['hasStoreOverride'], isTrue);
      expect(json['stockQuantity'], 10);
      expect(json['minStock'], 5);
      expect(json['isActive'], isTrue);
      expect(json['needsRestock'], isFalse);

      final fromJson = StoreProduct.fromJson(json);
      expect(fromJson.storeId, 's1');
      expect(fromJson.product.code, 'PRD-001');
      expect(fromJson.salePrice, MoneyAmount.parse('12.00'));
      expect(fromJson.hasStoreOverride, isTrue);
      expect(fromJson.stockQuantity, 10);
      expect(fromJson.minStock, 5);
      expect(fromJson.isActive, isTrue);
      expect(fromJson.needsRestock, isFalse);
    });

    test('StoreProductSettingsRequest toJson and fromJson', () {
      final request = StoreProductSettingsRequest(
        minStock: 5,
        isActive: true,
        salePrice: MoneyAmount.parse('12.00'),
      );
      final json = request.toJson();
      expect(json['minStock'], 5);
      expect(json['isActive'], isTrue);
      expect(json['salePrice'], '12.00');

      final fromJson = StoreProductSettingsRequest.fromJson(json);
      expect(fromJson.minStock, 5);
      expect(fromJson.isActive, isTrue);
      expect(fromJson.salePrice, MoneyAmount.parse('12.00'));
    });

    test('StoreService toJson and fromJson', () {
      final service = LaborService(
        code: 'srv-01',
        name: 'Screen Repair',
        price: MoneyAmount.parse('150.00'),
        isActive: true,
      );
      final storeService = StoreService(
        storeId: 's1',
        service: service,
        price: MoneyAmount.parse('140.00'),
        hasStoreOverride: true,
        isActive: true,
      );
      final json = storeService.toJson();
      expect(json['storeId'], 's1');
      expect((json['service'] as Map)['code'], 'srv-01');
      expect(json['price'], '140.00');
      expect(json['hasStoreOverride'], isTrue);
      expect(json['isActive'], isTrue);

      final fromJson = StoreService.fromJson(json);
      expect(fromJson.storeId, 's1');
      expect(fromJson.service.code, 'srv-01');
      expect(fromJson.price, MoneyAmount.parse('140.00'));
      expect(fromJson.hasStoreOverride, isTrue);
      expect(fromJson.isActive, isTrue);
    });

    test('StoreServiceSettingsRequest toJson and fromJson', () {
      final request = StoreServiceSettingsRequest(
        isActive: true,
        price: MoneyAmount.parse('140.00'),
      );
      final json = request.toJson();
      expect(json['isActive'], isTrue);
      expect(json['price'], '140.00');

      final fromJson = StoreServiceSettingsRequest.fromJson(json);
      expect(fromJson.isActive, isTrue);
      expect(fromJson.price, MoneyAmount.parse('140.00'));
    });
  });
}
