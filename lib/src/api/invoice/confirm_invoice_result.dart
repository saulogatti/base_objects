import 'package:base_objects/src/api/cash/cash_summary.dart';
import 'package:base_objects/src/api/invoice/invoice.dart';
import 'package:base_objects/src/api/receivable/receivable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_invoice_result.g.dart';

/// Resposta da confirmação: nota, parcelas e caixa.
@JsonSerializable()
final class ConfirmInvoiceResult {
  /// Cria a resposta.
  const new({required this.invoice, required this.receivables, this.cashSummary});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$ConfirmInvoiceResultFromJson(json);

  /// Esquema JSON gerado para a resposta.
  static Map<String, Object> get schema => _$ConfirmInvoiceResultJsonSchema;

  /// Nota confirmada.
  final Invoice invoice;

  /// Parcelas geradas.
  final List<Receivable> receivables;

  /// Turno atualizado, ou `null` quando a confirmação não movimenta caixa.
  final CashSummary? cashSummary;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$ConfirmInvoiceResultToJson(this);
}
