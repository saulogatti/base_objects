import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'receivable.g.dart';

/// Parcela a receber (`API.md` §13).
///
/// Inclui `cashMovementId` e `isOverdue`, que o modelo do app ainda não tem.
@JsonSerializable()
final class Receivable {
  /// Cria a parcela.
  const new({
    required this.id,
    required this.storeId,
    required this.customerId,
    required this.customerName,
    required this.installmentNumber,
    required this.amount,
    required this.dueDate,
    required this.paidAmount,
    required this.isOverdue,
    this.invoiceId,
    this.invoiceNumber,
    this.paidAt,
    this.cashMovementId,
    this.cancelledAt,
    this.cancelReason,
  });

  /// Lê a parcela.
  factory fromJson(Map<String, dynamic> json) => _$ReceivableFromJson(json);

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Cliente.
  final String customerId;

  /// Nome do cliente no momento da consulta.
  final String customerName;

  /// Nota de origem, ou `null` quando o SQL permite.
  final String? invoiceId;

  /// Número da nota, ou `null`.
  final int? invoiceNumber;

  /// Número da parcela, a partir de 1.
  final int installmentNumber;

  /// Valor da parcela.
  final MoneyAmount amount;

  /// Vencimento.
  final CalendarDate dueDate;

  /// Valor já pago. Na v1, zero ou o total.
  final MoneyAmount paidAmount;

  /// Quitação, ou `null`.
  final ApiInstant? paidAt;

  /// Movimento de caixa da baixa, ou `null`.
  final String? cashMovementId;

  /// Cancelamento, ou `null`.
  final ApiInstant? cancelledAt;

  /// Motivo do cancelamento, ou `null`.
  final String? cancelReason;

  /// Se está vencida e em aberto. Calculado no servidor.
  final bool isOverdue;

  /// Serializa a parcela.
  Map<String, dynamic> toJson() => _$ReceivableToJson(this);
}

/// Corpo de `POST .../receivables/{id}/settle`.
@JsonSerializable()
final class SettleReceivableRequest {
  /// Cria o corpo.
  const new({
    required this.id,
    required this.sessionId,
    required this.paymentMethodId,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$SettleReceivableRequestFromJson(json);

  /// Chave de idempotência. Vira o id do movimento de caixa.
  final String id;

  /// Turno aberto do operador.
  final String sessionId;

  /// Forma ativa, exceto crediário.
  final String paymentMethodId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$SettleReceivableRequestToJson(this);
}
