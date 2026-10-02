import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/percent_amount.dart';
import 'package:base_objects/src/api/core/quantity_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_lines.g.dart';

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

  /// Esquema JSON gerado para o item.
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

  /// Esquema JSON gerado para o pagamento.
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

  /// Esquema JSON gerado para o valor.
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
