import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/invoice.dart';
import 'package:base_objects/src/api/party.dart';
import 'package:base_objects/src/api/receivable.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_order.g.dart';

/// Checklist de entrada do aparelho (`API.md` §11).
@JsonSerializable()
final class DeviceEntryCondition {
  /// Cria o checklist.
  const DeviceEntryCondition({
    required this.screenCracked,
    required this.touchWorking,
    required this.housingDamaged,
    required this.waterDamage,
    required this.batterySwollen,
    required this.buttonsWorking,
    required this.cameraWorking,
    required this.chargingWorking,
    this.notes,
  });

  /// Lê o checklist.
  factory DeviceEntryCondition.fromJson(Map<String, dynamic> json) =>
      _$DeviceEntryConditionFromJson(json);

  /// Se a tela está trincada.
  final bool screenCracked;

  /// Se o toque funciona.
  final bool touchWorking;

  /// Se a carcaça está danificada.
  final bool housingDamaged;

  /// Se há dano por líquido.
  final bool waterDamage;

  /// Se a bateria está inchada.
  final bool batterySwollen;

  /// Se os botões funcionam.
  final bool buttonsWorking;

  /// Se a câmera funciona.
  final bool cameraWorking;

  /// Se a carga funciona.
  final bool chargingWorking;

  /// Observação, ou `null`.
  final String? notes;

  /// Serializa o checklist.
  Map<String, dynamic> toJson() => _$DeviceEntryConditionToJson(this);
}

/// Item do orçamento na resposta.
@JsonSerializable()
final class ServiceOrderItem {
  /// Cria o item.
  const ServiceOrderItem({
    required this.id,
    required this.serviceOrderId,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalValue,
    required this.createdAt,
    this.productId,
    this.serviceId,
    this.unitCost,
  });

  /// Lê o item.
  factory ServiceOrderItem.fromJson(Map<String, dynamic> json) => _$ServiceOrderItemFromJson(json);

  /// UUID.
  final String id;

  /// Ordem dona do item.
  final String serviceOrderId;

  /// Peça, ou `null`.
  final String? productId;

  /// Mão de obra, ou `null`.
  final String? serviceId;

  /// Descrição.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Custo unitário, ou `null`.
  final MoneyAmount? unitCost;

  /// Total calculado.
  final MoneyAmount totalValue;

  /// Inclusão.
  final ApiInstant createdAt;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$ServiceOrderItemToJson(this);
}

/// Ordem de serviço (`API.md` §11).
///
/// `isOverdue` e `isUnderWarranty` vêm calculados no servidor.
/// `unlockCode` sai `null` na listagem.
@JsonSerializable()
final class ServiceOrder {
  /// Cria a ordem.
  const ServiceOrder({
    required this.id,
    required this.storeId,
    required this.number,
    required this.customerId,
    required this.deviceId,
    required this.status,
    required this.reportedIssue,
    required this.hasBackup,
    required this.totalValue,
    required this.partsTotal,
    required this.laborTotal,
    required this.warrantyDays,
    required this.isOverdue,
    required this.isUnderWarranty,
    required this.items,
    required this.createdAt,
    required this.updatedAt,
    this.technicianId,
    this.accessories,
    this.deviceCondition,
    this.unlockCode,
    this.diagnosis,
    this.quoteValue,
    this.quoteSentAt,
    this.approvedAt,
    this.approvedByName,
    this.rejectionReason,
    this.promisedDate,
    this.repairNotes,
    this.deliveredAt,
    this.deliveredToName,
    this.warrantyExpiresAt,
    this.invoiceId,
    this.createdBy,
  });

  /// Lê a ordem.
  factory ServiceOrder.fromJson(Map<String, dynamic> json) => _$ServiceOrderFromJson(json);

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Sequencial por loja.
  final int number;

  /// Cliente.
  final String customerId;

  /// Aparelho.
  final String deviceId;

  /// Situação.
  final ServiceOrderStatus status;

  /// Técnico, ou `null`.
  final String? technicianId;

  /// Defeito relatado.
  final String reportedIssue;

  /// Acessórios, ou `null`.
  final String? accessories;

  /// Checklist de entrada, ou `null`.
  final DeviceEntryCondition? deviceCondition;

  /// Senha ou padrão. `null` na listagem e sem a permissão de atualização.
  final String? unlockCode;

  /// Se foi feito backup.
  final bool hasBackup;

  /// Diagnóstico, ou `null`.
  final String? diagnosis;

  /// Valor orçado, ou `null`.
  final MoneyAmount? quoteValue;

  /// Envio do orçamento, ou `null`.
  final ApiInstant? quoteSentAt;

  /// Aprovação, ou `null`.
  final ApiInstant? approvedAt;

  /// Quem autorizou pelo cliente, ou `null`.
  final String? approvedByName;

  /// Motivo da recusa, ou `null`.
  final String? rejectionReason;

  /// Prazo prometido, ou `null`.
  final CalendarDate? promisedDate;

  /// Notas de execução, ou `null`.
  final String? repairNotes;

  /// Soma dos itens.
  final MoneyAmount totalValue;

  /// Soma das peças.
  final MoneyAmount partsTotal;

  /// Soma da mão de obra.
  final MoneyAmount laborTotal;

  /// Garantia em dias.
  final int warrantyDays;

  /// Entrega, ou `null`.
  final ApiInstant? deliveredAt;

  /// Quem retirou, ou `null`.
  final String? deliveredToName;

  /// Fim da garantia, ou `null`.
  final CalendarDate? warrantyExpiresAt;

  /// Nota gerada na entrega, ou `null`.
  final String? invoiceId;

  /// Se o prazo estourou e a ordem segue aberta.
  final bool isOverdue;

  /// Se a garantia ainda vale.
  final bool isUnderWarranty;

  /// Itens. Lista vazia na fila.
  final List<ServiceOrderItem> items;

  /// Autor da abertura, ou `null`.
  final String? createdBy;

  /// Criação.
  final ApiInstant createdAt;

  /// Última alteração.
  final ApiInstant updatedAt;

  /// Serializa a ordem.
  Map<String, dynamic> toJson() => _$ServiceOrderToJson(this);
}

/// Cliente resumido na fila (`id`, `name`, `phone`).
@JsonSerializable()
final class ServiceOrderCustomer {
  /// Cria o resumo.
  const ServiceOrderCustomer({required this.id, required this.name, this.phone});

  /// Lê o resumo.
  factory ServiceOrderCustomer.fromJson(Map<String, dynamic> json) =>
      _$ServiceOrderCustomerFromJson(json);

  /// UUID.
  final String id;

  /// Nome.
  final String name;

  /// Telefone, ou `null`.
  final String? phone;

  /// Serializa o resumo.
  Map<String, dynamic> toJson() => _$ServiceOrderCustomerToJson(this);
}

/// Linha da fila (`API.md` §11, `ServiceOrderListing`).
@JsonSerializable()
final class ServiceOrderListing {
  /// Cria a linha.
  const ServiceOrderListing({required this.order, required this.customer, required this.device});

  /// Lê a linha.
  factory ServiceOrderListing.fromJson(Map<String, dynamic> json) =>
      _$ServiceOrderListingFromJson(json);

  /// Ordem sem itens e sem senha.
  final ServiceOrder order;

  /// Cliente.
  final ServiceOrderCustomer customer;

  /// Aparelho.
  final Device device;

  /// Serializa a linha.
  Map<String, dynamic> toJson() => _$ServiceOrderListingToJson(this);
}

/// Linha do histórico de status.
@JsonSerializable()
final class ServiceOrderStatusChange {
  /// Cria a linha.
  const ServiceOrderStatusChange({
    required this.id,
    required this.serviceOrderId,
    required this.toStatus,
    required this.changedAt,
    this.fromStatus,
    this.notes,
    this.changedBy,
    this.changedByName,
  });

  /// Lê a linha.
  factory ServiceOrderStatusChange.fromJson(Map<String, dynamic> json) =>
      _$ServiceOrderStatusChangeFromJson(json);

  /// UUID.
  final String id;

  /// Ordem.
  final String serviceOrderId;

  /// Status anterior. `null` na abertura.
  final ServiceOrderStatus? fromStatus;

  /// Novo status.
  final ServiceOrderStatus toStatus;

  /// Observação, ou `null`.
  final String? notes;

  /// Autor, ou `null`.
  final String? changedBy;

  /// Nome do autor, ou `null`.
  final String? changedByName;

  /// Momento.
  final ApiInstant changedAt;

  /// Serializa a linha.
  Map<String, dynamic> toJson() => _$ServiceOrderStatusChangeToJson(this);
}

/// Corpo de `POST .../service-orders`.
@JsonSerializable()
final class OpenServiceOrderRequest {
  /// Cria o corpo.
  const OpenServiceOrderRequest({
    required this.id,
    required this.customerId,
    required this.device,
    required this.reportedIssue,
    required this.hasBackup,
    this.accessories,
    this.deviceCondition,
    this.unlockCode,
    this.promisedDate,
  });

  /// Lê o corpo.
  factory OpenServiceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$OpenServiceOrderRequestFromJson(json);

  /// UUID da ordem.
  final String id;

  /// Cliente.
  final String customerId;

  /// Aparelho. Gravado por upsert do `device.id`.
  final Device device;

  /// Defeito relatado.
  final String reportedIssue;

  /// Acessórios, ou `null`.
  final String? accessories;

  /// Checklist, ou `null`.
  final DeviceEntryCondition? deviceCondition;

  /// Senha ou padrão, ou `null`.
  final String? unlockCode;

  /// Se foi feito backup.
  final bool hasBackup;

  /// Prazo prometido, ou `null`.
  final CalendarDate? promisedDate;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$OpenServiceOrderRequestToJson(this);
}

/// Item enviado no diagnóstico. Sem custo nem total.
@JsonSerializable()
final class DiagnosisItemRequest {
  /// Cria o item.
  const DiagnosisItemRequest({
    required this.id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.productId,
    this.serviceId,
  });

  /// Lê o item.
  factory DiagnosisItemRequest.fromJson(Map<String, dynamic> json) =>
      _$DiagnosisItemRequestFromJson(json);

  /// UUID do item.
  final String id;

  /// Peça, ou `null`.
  final String? productId;

  /// Mão de obra, ou `null`.
  final String? serviceId;

  /// Descrição.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$DiagnosisItemRequestToJson(this);
}

/// Corpo de `PUT .../diagnosis`.
@JsonSerializable()
final class SaveDiagnosisRequest {
  /// Cria o corpo.
  const SaveDiagnosisRequest({
    required this.diagnosis,
    required this.sendQuote,
    required this.items,
    this.repairNotes,
    this.technicianId,
  });

  /// Lê o corpo.
  factory SaveDiagnosisRequest.fromJson(Map<String, dynamic> json) =>
      _$SaveDiagnosisRequestFromJson(json);

  /// Diagnóstico.
  final String diagnosis;

  /// Notas de execução, ou `null`.
  final String? repairNotes;

  /// Técnico, ou `null`.
  final String? technicianId;

  /// Se o orçamento já deve ir para o cliente.
  final bool sendQuote;

  /// Itens. Substituem os anteriores.
  final List<DiagnosisItemRequest> items;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$SaveDiagnosisRequestToJson(this);
}

/// Corpo de `POST .../approve`.
@JsonSerializable()
final class ApproveServiceOrderRequest {
  /// Cria o corpo.
  const ApproveServiceOrderRequest({required this.approvedByName});

  /// Lê o corpo.
  factory ApproveServiceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$ApproveServiceOrderRequestFromJson(json);

  /// Nome de quem autorizou.
  final String approvedByName;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ApproveServiceOrderRequestToJson(this);
}

/// Corpo de `POST .../reject`.
@JsonSerializable()
final class RejectServiceOrderRequest {
  /// Cria o corpo.
  const RejectServiceOrderRequest({required this.rejectionReason});

  /// Lê o corpo.
  factory RejectServiceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$RejectServiceOrderRequestFromJson(json);

  /// Motivo.
  final String rejectionReason;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RejectServiceOrderRequestToJson(this);
}

/// Corpo de `POST .../status`.
@JsonSerializable()
final class ChangeServiceOrderStatusRequest {
  /// Cria o corpo.
  const ChangeServiceOrderStatusRequest({required this.status, this.notes});

  /// Lê o corpo.
  factory ChangeServiceOrderStatusRequest.fromJson(Map<String, dynamic> json) =>
      _$ChangeServiceOrderStatusRequestFromJson(json);

  /// Novo status. `delivered` e `cancelled` têm rota própria.
  final ServiceOrderStatus status;

  /// Observação, ou `null`.
  final String? notes;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ChangeServiceOrderStatusRequestToJson(this);
}

/// Corpo de `PUT .../technician`.
@JsonSerializable()
final class AssignTechnicianRequest {
  /// Cria o corpo.
  const AssignTechnicianRequest({required this.technicianId});

  /// Lê o corpo.
  factory AssignTechnicianRequest.fromJson(Map<String, dynamic> json) =>
      _$AssignTechnicianRequestFromJson(json);

  /// Técnico com vínculo na loja.
  final String technicianId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$AssignTechnicianRequestToJson(this);
}

/// Corpo de `POST .../deliver`.
@JsonSerializable()
final class DeliverServiceOrderRequest {
  /// Cria o corpo.
  const DeliverServiceOrderRequest({
    required this.deliveredToName,
    required this.invoiceId,
    required this.checkout,
    this.notes,
  });

  /// Lê o corpo.
  factory DeliverServiceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$DeliverServiceOrderRequestFromJson(json);

  /// Quem retirou.
  final String deliveredToName;

  /// Observação, ou `null`.
  final String? notes;

  /// UUID da nota, gerado pelo app para idempotência.
  final String invoiceId;

  /// Recebimento, com as mesmas regras da venda.
  final CheckoutRequest checkout;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$DeliverServiceOrderRequestToJson(this);
}

/// Resposta da entrega.
@JsonSerializable()
final class DeliverServiceOrderResult {
  /// Cria a resposta.
  const DeliverServiceOrderResult({
    required this.serviceOrder,
    required this.invoice,
    required this.receivables,
  });

  /// Lê a resposta.
  factory DeliverServiceOrderResult.fromJson(Map<String, dynamic> json) =>
      _$DeliverServiceOrderResultFromJson(json);

  /// Ordem entregue.
  final ServiceOrder serviceOrder;

  /// Nota de saída confirmada.
  final Invoice invoice;

  /// Parcelas geradas.
  final List<Receivable> receivables;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$DeliverServiceOrderResultToJson(this);
}

/// Corpo de `POST .../service-orders/{id}/cancel`.
@JsonSerializable()
final class CancelServiceOrderRequest {
  /// Cria o corpo.
  const CancelServiceOrderRequest({required this.reason});

  /// Lê o corpo.
  factory CancelServiceOrderRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelServiceOrderRequestFromJson(json);

  /// Motivo.
  final String reason;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CancelServiceOrderRequestToJson(this);
}
