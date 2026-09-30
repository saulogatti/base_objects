import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/cash/cash_summary.dart';
import 'package:base_objects/src/api/receivable.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice.g.dart';

/// Corpo de `POST .../invoices/{id}/cancel`.
@JsonSerializable()
final class CancelInvoiceRequest {
  /// Cria o corpo.
  const new({required this.reason, this.sessionId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$CancelInvoiceRequestFromJson(json);
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

/// Corpo de `POST .../invoices/{id}/confirm`.
@JsonSerializable()
final class ConfirmInvoiceRequest {
  /// Cria o corpo.
  const new({required this.allowNegativeStock, this.invoice, this.checkout});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ConfirmInvoiceRequestFromJson(json);

  static Map<String, Object> get schema => _$ConfirmInvoiceRequestJsonSchema;

  /// Rascunho, quando a nota ainda não foi gravada.
  final InvoiceDraft? invoice;

  /// Se aceita saldo negativo. Exige `stock:adjust`.
  final bool allowNegativeStock;

  /// Recebimento. Obrigatório na saída; recusado na entrada.
  final CheckoutRequest? checkout;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ConfirmInvoiceRequestToJson(this);
}

/// Resposta da confirmação: nota, parcelas e caixa.
@JsonSerializable()
final class ConfirmInvoiceResult {
  /// Cria a resposta.
  const new({required this.invoice, required this.receivables, required this.cashSummary});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$ConfirmInvoiceResultFromJson(json);

  static Map<String, Object> get schema => _$ConfirmInvoiceResultJsonSchema;

  /// Nota confirmada.
  final Invoice invoice;

  /// Parcelas geradas.
  final List<Receivable> receivables;

  /// Turno atualizado.
  final CashSummary cashSummary;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$ConfirmInvoiceResultToJson(this);
}

/// Nota de venda ou compra (`API.md` §10).
@JsonSerializable()
final class Invoice {
  /// Cria a nota.
  const new({
    required this.id,
    required this.storeId,
    required this.number,
    required this.type,
    required this.status,
    required this.issueDate,
    required this.discount,
    required this.subtotal,
    required this.totalValue,
    required this.items,
    required this.payments,
    required this.createdAt,
    required this.updatedAt,
    this.customerId,
    this.supplierId,
    this.customerName,
    this.supplierName,
    this.notes,
    this.createdBy,
    this.cancelledBy,
    this.cancelledAt,
    this.cancelReason,
  });

  /// Lê a nota.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);

  static Map<String, Object> get schema => _$InvoiceJsonSchema;

  /// UUID.
  final String id;

  /// Loja. Vem do caminho, não do corpo.
  final String storeId;

  /// Sequencial por loja.
  final int number;

  /// Entrada ou saída.
  final InvoiceType type;

  /// Situação. Muda só por comando.
  final InvoiceStatus status;

  /// Cliente, ou `null` na entrada.
  final String? customerId;

  /// Fornecedor, ou `null` na saída.
  final String? supplierId;

  /// Nome do cliente na listagem, ou `null`.
  final String? customerName;

  /// Nome do fornecedor na listagem, ou `null`.
  final String? supplierName;

  /// Emissão.
  final CalendarDate issueDate;

  /// Desconto no total.
  final MoneyAmount discount;

  /// Soma dos itens, calculada no servidor.
  final MoneyAmount subtotal;

  /// Total (`subtotal` menos [discount]).
  final MoneyAmount totalValue;

  /// Observações, ou `null`.
  final String? notes;

  /// Itens.
  final List<InvoiceItem> items;

  /// Pagamentos. Vazio fora da saída confirmada.
  final List<InvoicePayment> payments;

  /// Autor, ou `null`.
  final String? createdBy;

  /// Quem cancelou, ou `null`.
  final String? cancelledBy;

  /// Cancelamento, ou `null`.
  final ApiInstant? cancelledAt;

  /// Motivo do cancelamento, ou `null`.
  final String? cancelReason;

  /// Criação.
  final ApiInstant createdAt;

  /// Última alteração.
  final ApiInstant updatedAt;

  /// Serializa a nota.
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}

/// Corpo de `PUT .../invoices/{id}` (rascunho).
@JsonSerializable()
final class InvoiceDraft {
  /// Cria o rascunho.
  const new({
    required this.type,
    required this.items,
    this.customerId,
    this.supplierId,
    this.issueDate,
    this.discount,
    this.notes,
  });

  /// Lê o rascunho.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceDraftFromJson(json);

  static Map<String, Object> get schema => _$InvoiceDraftJsonSchema;

  /// Entrada ou saída.
  final InvoiceType type;

  /// Cliente, obrigatório em saída.
  final String? customerId;

  /// Fornecedor, obrigatório em entrada. No app o campo se chama `companyId`.
  final String? supplierId;

  /// Emissão. O servidor usa hoje quando vem `null`.
  final CalendarDate? issueDate;

  /// Desconto no total, ou `null` (o servidor grava zero).
  final MoneyAmount? discount;

  /// Observações, ou `null`.
  final String? notes;

  /// Itens. Substituem os anteriores.
  final List<InvoiceItemDraft> items;

  /// Serializa o rascunho.
  Map<String, dynamic> toJson() => _$InvoiceDraftToJson(this);
}

/// Item da nota na resposta.
@JsonSerializable()
final class InvoiceItem {
  /// Cria o item.
  const new({
    required this.id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.discount,
    required this.totalValue,
    this.productId,
    this.serviceId,
    this.unitCost,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceItemFromJson(json);

  static Map<String, Object> get schema => _$InvoiceItemJsonSchema;

  /// UUID do item.
  final String id;

  /// Peça, ou `null`.
  final String? productId;

  /// Mão de obra, ou `null`.
  final String? serviceId;

  /// Nome congelado.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Custo unitário. `null` sem `product:view_cost`.
  final MoneyAmount? unitCost;

  /// Desconto do item.
  final MoneyAmount discount;

  /// Total calculado no servidor.
  final MoneyAmount totalValue;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
}

/// Item enviado no rascunho. Sem totais calculados.
@JsonSerializable()
final class InvoiceItemDraft {
  /// Cria o item.
  const new({
    required this.id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.productId,
    this.serviceId,
    this.discount,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceItemDraftFromJson(json);

  static Map<String, Object> get schema => _$InvoiceItemDraftJsonSchema;

  /// UUID do item.
  final String id;

  /// Peça, ou `null` se for serviço.
  final String? productId;

  /// Mão de obra, ou `null` se for peça.
  final String? serviceId;

  /// Nome congelado.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Desconto do item, ou `null`.
  final MoneyAmount? discount;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$InvoiceItemDraftToJson(this);
}

/// Pagamento gravado numa nota de saída confirmada.
@JsonSerializable()
final class InvoicePayment {
  /// Cria o pagamento.
  const new({
    required this.id,
    required this.invoiceId,
    required this.paymentMethodId,
    required this.amount,
    required this.installments,
    required this.checkoutId,
    required this.methodName,
    required this.affectsCashDrawer,
    required this.feePercent,
    required this.feeAmount,
    required this.netAmount,
    this.cashSessionId,
    this.cashMovementId,
    this.expectedSettlementAt,
  });

  /// Lê o pagamento.
  factory fromJson(Map<String, dynamic> json) => _$InvoicePaymentFromJson(json);

  static Map<String, Object> get schema => _$InvoicePaymentJsonSchema;

  /// UUID.
  final String id;

  /// Nota.
  final String invoiceId;

  /// Forma.
  final String paymentMethodId;

  /// Valor.
  final MoneyAmount amount;

  /// Número de parcelas.
  final int installments;

  /// Turno, ou `null`.
  final String? cashSessionId;

  /// Recebimento.
  final String checkoutId;

  /// Movimento de caixa, ou `null` no crediário.
  final String? cashMovementId;

  /// Nome da forma no momento do recebimento.
  final String methodName;

  /// Se afetou a gaveta.
  final bool affectsCashDrawer;

  /// Taxa percentual, escala 3.
  final PercentAmount feePercent;

  /// Valor da taxa.
  final MoneyAmount feeAmount;

  /// Líquido.
  final MoneyAmount netAmount;

  /// Previsão de liquidação, ou `null`.
  final ApiInstant? expectedSettlementAt;

  /// Serializa o pagamento.
  Map<String, dynamic> toJson() => _$InvoicePaymentToJson(this);
}

/// Valor estornável de uma forma.
@JsonSerializable()
final class RefundMethodAmount {
  /// Cria o valor.
  const new({required this.paymentMethodId, required this.name, required this.amount});

  /// Lê o valor.
  factory fromJson(Map<String, dynamic> json) => _$RefundMethodAmountFromJson(json);

  static Map<String, Object> get schema => _$RefundMethodAmountJsonSchema;

  /// Forma.
  final String paymentMethodId;

  /// Nome da forma.
  final String name;

  /// Valor.
  final MoneyAmount amount;

  /// Serializa o valor.
  Map<String, dynamic> toJson() => _$RefundMethodAmountToJson(this);
}

/// Prévia de estorno, sem alterar nada (`API.md` §10.5).
@JsonSerializable()
final class RefundPreview {
  /// Cria a prévia.
  const new({
    required this.amountsByMethod,
    required this.openInstallments,
    required this.openAmount,
  });

  /// Lê a prévia.
  factory fromJson(Map<String, dynamic> json) => _$RefundPreviewFromJson(json);

  /// Valores por forma, em lista.
  final List<RefundMethodAmount> amountsByMethod;

  /// Parcelas ainda em aberto.
  final int openInstallments;

  /// Soma das parcelas em aberto.
  final MoneyAmount openAmount;

  /// Serializa a prévia.
  Map<String, dynamic> toJson() => _$RefundPreviewToJson(this);
}
