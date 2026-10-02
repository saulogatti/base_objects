import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:base_objects/src/api/service_order/service_order_entry.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_order.g.dart';

/// Ordem de serviço (`API.md` §11).
///
/// `isOverdue` e `isUnderWarranty` vêm calculados no servidor.
/// `unlockCode` sai `null` na listagem.
@JsonSerializable()
final class ServiceOrder {
  /// Cria a ordem.
  const new({
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
  factory fromJson(Map<String, dynamic> json) => _$ServiceOrderFromJson(json);

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
