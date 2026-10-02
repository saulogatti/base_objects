import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_checkout.g.dart';

/// Corpo de `POST .../invoices/{id}/cancel`.
@JsonSerializable()
final class CancelInvoiceRequest {
  /// Cria o corpo.
  const new({required this.reason, this.sessionId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$CancelInvoiceRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
  static Map<String, Object> get schema => _$CancelInvoiceRequestJsonSchema;

  /// Motivo obrigatório.
  final String reason;

  /// Turno do estorno. Obrigatório na saída confirmada.
  final String? sessionId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CancelInvoiceRequestToJson(this);
}

/// Parcela do crediário no checkout.
@JsonSerializable()
final class CheckoutInstallmentRequest {
  /// Cria a parcela.
  const new({required this.id, required this.amount, required this.dueDate});

  /// Lê a parcela.
  factory fromJson(Map<String, dynamic> json) => _$CheckoutInstallmentRequestFromJson(json);

  /// Esquema JSON gerado para a parcela.
  static Map<String, Object> get schema => _$CheckoutInstallmentRequestJsonSchema;

  /// UUID. Vira `receivables.id`.
  final String id;

  /// Valor.
  final MoneyAmount amount;

  /// Vencimento.
  final CalendarDate dueDate;

  /// Serializa a parcela.
  Map<String, dynamic> toJson() => _$CheckoutInstallmentRequestToJson(this);
}

/// Pagamento enviado no checkout.
@JsonSerializable()
final class CheckoutPaymentRequest {
  /// Cria o pagamento.
  const new({
    required this.id,
    required this.paymentMethodId,
    required this.amount,
    required this.installments,
    required this.schedule,
  });

  /// Lê o pagamento.
  factory fromJson(Map<String, dynamic> json) => _$CheckoutPaymentRequestFromJson(json);

  /// Esquema JSON gerado para o pagamento.
  static Map<String, Object> get schema => _$CheckoutPaymentRequestJsonSchema;

  /// UUID. Vira `invoice_payments.id`.
  final String id;

  /// Forma ativa.
  final String paymentMethodId;

  /// Valor.
  final MoneyAmount amount;

  /// Parcelas. Maior que 1 só se a forma permitir.
  final int installments;

  /// Cronograma. Só no crediário.
  final List<CheckoutInstallmentRequest> schedule;

  /// Serializa o pagamento.
  Map<String, dynamic> toJson() => _$CheckoutPaymentRequestToJson(this);
}

/// Recebimento (`CheckoutInput`, `API.md` §10.4).
@JsonSerializable()
final class CheckoutRequest {
  /// Cria o recebimento.
  const new({required this.id, required this.sessionId, required this.payments});

  /// Lê o recebimento.
  factory fromJson(Map<String, dynamic> json) => _$CheckoutRequestFromJson(json);

  /// Esquema JSON gerado para o recebimento.
  static Map<String, Object> get schema => _$CheckoutRequestJsonSchema;

  /// Chave de idempotência do recebimento.
  final String id;

  /// Turno aberto do operador do token.
  final String sessionId;

  /// Pagamentos.
  final List<CheckoutPaymentRequest> payments;

  /// Serializa o recebimento.
  Map<String, dynamic> toJson() => _$CheckoutRequestToJson(this);
}
