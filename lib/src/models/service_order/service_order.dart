import 'package:base_objects/src/models/default/default_object.dart';
import 'package:base_objects/src/models/service_order/service_order_status.dart';

/// Ordem de serviço: o ciclo de um conserto (domínio).
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// Cobre da entrada do aparelho até a entrega. Os campos se agrupam em quatro
/// momentos:
///
/// - **Entrada**: [reportedIssue], [accessories], [deviceCondition] e
///   [unlockCode]. Descrevem em que estado o aparelho chegou — é o que protege
///   a loja quando o cliente alega depois que a tela já estava trincada.
/// - **Diagnóstico**: [diagnosis] e [quoteValue]. Defeito relatado e defeito
///   encontrado são campos separados de propósito: costumam divergir.
/// - **Aprovação**: [approvedAt] e [approvedByName], porque nem sempre é o
///   titular quem autoriza o serviço.
/// - **Entrega**: [deliveredAt], [warrantyExpiresAt] e [invoiceId], que liga a
///   ordem à nota onde o valor foi efetivamente cobrado.
class ServiceOrder extends DefaultObject {
  /// Cria uma ordem de serviço.
  new({
    required this.storeId,
    required this.number,
    required this.customerId,
    required this.deviceId,
    required this.reportedIssue,
    this.status = ServiceOrderStatus.received,
    this.items = const [],
    this.technicianId,
    this.accessories,
    this.deviceCondition,
    this.unlockCode,
    this.hasBackup = false,
    this.diagnosis,
    this.quoteValue,
    this.quoteSentAt,
    this.approvedAt,
    this.approvedByName,
    this.rejectionReason,
    this.promisedDate,
    this.repairNotes,
    this.warrantyDays = 90,
    this.deliveredAt,
    this.deliveredToName,
    this.warrantyExpiresAt,
    this.invoiceId,
    this.createdBy,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Acessórios recebidos com o aparelho, ex.: capinha, chip, cartão.
  final String? accessories;

  /// Momento em que o cliente aprovou o orçamento.
  final DateTime? approvedAt;

  /// Quem autorizou o orçamento pelo lado do cliente.
  final String? approvedByName;

  /// Usuário que abriu a ordem.
  final String? createdBy;

  /// Dono do aparelho.
  final String customerId;

  /// Momento da entrega.
  final DateTime? deliveredAt;

  /// Quem retirou o aparelho.
  final String? deliveredToName;

  /// Checklist do estado do aparelho na entrada, em JSON.
  final String? deviceCondition;

  /// Aparelho em conserto.
  final String deviceId;

  /// Defeito encontrado pelo técnico.
  final String? diagnosis;

  /// Indica que foi feito backup antes do serviço.
  final bool hasBackup;

  /// Nota gerada na entrega.
  final String? invoiceId;

  /// Peças e mão de obra lançados na ordem.
  final List<ServiceOrderItem> items;

  /// Número sequencial por loja, exibido ao cliente.
  final int number;

  /// Prazo prometido de entrega.
  final DateTime? promisedDate;

  /// Momento em que o orçamento foi enviado ao cliente.
  final DateTime? quoteSentAt;

  /// Valor orçado.
  final num? quoteValue;

  /// Motivo da recusa do orçamento.
  final String? rejectionReason;

  /// Observações da execução do conserto.
  final String? repairNotes;

  /// Defeito conforme relatado pelo cliente, nas palavras dele.
  final String reportedIssue;

  /// Situação atual da ordem.
  final ServiceOrderStatus status;

  /// Loja responsável pela ordem.
  final String storeId;

  /// Técnico responsável.
  final String? technicianId;

  /// Senha ou padrão de desbloqueio fornecido pelo cliente.
  final String? unlockCode;

  /// Garantia oferecida, em dias.
  final int warrantyDays;

  /// Data de expiração da garantia, definida na entrega.
  final DateTime? warrantyExpiresAt;

  /// Cria uma cópia com os campos informados alterados.
  ServiceOrder copyWith({
    String? storeId,
    int? number,
    String? customerId,
    String? deviceId,
    String? reportedIssue,
    ServiceOrderStatus? status,
    List<ServiceOrderItem>? items,
    String? technicianId,
    String? accessories,
    String? deviceCondition,
    String? unlockCode,
    bool? hasBackup,
    String? diagnosis,
    num? quoteValue,
    DateTime? quoteSentAt,
    DateTime? approvedAt,
    String? approvedByName,
    String? rejectionReason,
    DateTime? promisedDate,
    String? repairNotes,
    int? warrantyDays,
    DateTime? deliveredAt,
    String? deliveredToName,
    DateTime? warrantyExpiresAt,
    String? invoiceId,
    String? createdBy,
    DateTime? updatedAt,
  }) => ServiceOrder(
    id: id,
    storeId: storeId ?? this.storeId,
    number: number ?? this.number,
    customerId: customerId ?? this.customerId,
    deviceId: deviceId ?? this.deviceId,
    reportedIssue: reportedIssue ?? this.reportedIssue,
    status: status ?? this.status,
    items: items ?? this.items,
    technicianId: technicianId ?? this.technicianId,
    accessories: accessories ?? this.accessories,
    deviceCondition: deviceCondition ?? this.deviceCondition,
    unlockCode: unlockCode ?? this.unlockCode,
    hasBackup: hasBackup ?? this.hasBackup,
    diagnosis: diagnosis ?? this.diagnosis,
    quoteValue: quoteValue ?? this.quoteValue,
    quoteSentAt: quoteSentAt ?? this.quoteSentAt,
    approvedAt: approvedAt ?? this.approvedAt,
    approvedByName: approvedByName ?? this.approvedByName,
    rejectionReason: rejectionReason ?? this.rejectionReason,
    promisedDate: promisedDate ?? this.promisedDate,
    repairNotes: repairNotes ?? this.repairNotes,
    warrantyDays: warrantyDays ?? this.warrantyDays,
    deliveredAt: deliveredAt ?? this.deliveredAt,
    deliveredToName: deliveredToName ?? this.deliveredToName,
    warrantyExpiresAt: warrantyExpiresAt ?? this.warrantyExpiresAt,
    invoiceId: invoiceId ?? this.invoiceId,
    createdBy: createdBy ?? this.createdBy,
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  @override
  String toString() => 'ServiceOrder(#$number, ${status.name})';
}

/// Item de uma ordem de serviço: peça ou mão de obra (domínio).
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// Peça ([productId]) dá baixa no estoque da loja; mão de obra ([serviceId])
/// não movimenta nada. É essa separação que permite responder, no fechamento
/// do mês, quanto do faturamento veio de peça e quanto veio de bancada.
class ServiceOrderItem extends DefaultObject {
  /// Cria um item de ordem de serviço.
  new({
    required this.serviceOrderId,
    required this.description,
    required this.unitPrice,
    num? quantity,
    this.productId,
    this.serviceId,
    this.unitCost,
    num? totalValue,
    super.id,
    super.createdAt,
    super.updatedAt,
  }) : assert(
         (productId == null) != (serviceId == null),
         'Informe exatamente um: productId (peça) ou serviceId (mão de obra).',
       ),
       quantity = quantity ?? 1,
       totalValue = totalValue ?? unitPrice * (quantity ?? 1);

  /// Nome do item no momento do orçamento.
  final String description;

  /// Peça utilizada, quando o item baixa estoque.
  final String? productId;

  /// Quantidade aplicada.
  final num quantity;

  /// Serviço prestado, quando o item é mão de obra.
  final String? serviceId;

  /// Ordem a que o item pertence.
  final String serviceOrderId;

  /// Valor total do item.
  final num totalValue;

  /// Custo no momento do orçamento, base do cálculo de margem.
  final num? unitCost;

  /// Preço unitário cobrado.
  final num unitPrice;

  /// Indica peça, que dá baixa no estoque.
  bool get isPart => productId != null;

  /// Indica mão de obra, que não movimenta estoque.
  bool get isService => serviceId != null;

  /// Cria uma cópia com os campos informados alterados.
  ServiceOrderItem copyWith({
    String? serviceOrderId,
    String? description,
    num? unitPrice,
    num? quantity,
    String? productId,
    String? serviceId,
    num? unitCost,
    num? totalValue,
  }) => ServiceOrderItem(
    id: id,
    serviceOrderId: serviceOrderId ?? this.serviceOrderId,
    description: description ?? this.description,
    unitPrice: unitPrice ?? this.unitPrice,
    quantity: quantity ?? this.quantity,
    productId: productId ?? this.productId,
    serviceId: serviceId ?? this.serviceId,
    unitCost: unitCost ?? this.unitCost,
    totalValue: totalValue ?? this.totalValue,
    createdAt: createdAt,
    updatedAt: DateTime.now(),
  );
}

/// Transição de status registrada numa ordem de serviço (domínio).
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// Existe por um motivo prático: quando o cliente cobra o prazo prometido ou
/// questiona quando o orçamento foi aprovado, este histórico é a única fonte
/// que responde. O status atual, sozinho, não conta essa história.
class ServiceOrderStatusChange extends DefaultObject {
  /// Registra a transição.
  new({
    required this.serviceOrderId,
    required this.toStatus,
    this.fromStatus,
    this.notes,
    this.changedBy,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Usuário que fez a mudança.
  final String? changedBy;

  /// Status anterior. Nulo na abertura da ordem.
  final ServiceOrderStatus? fromStatus;

  /// Observação da mudança, ex.: motivo do atraso.
  final String? notes;

  /// Ordem a que a transição pertence.
  final String serviceOrderId;

  /// Novo status.
  final ServiceOrderStatus toStatus;

  /// Momento da transição.
  DateTime get changedAt => createdAt;
}
