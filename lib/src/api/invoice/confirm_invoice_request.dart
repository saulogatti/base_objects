import 'package:base_objects/src/api/invoice/invoice_checkout.dart';
import 'package:base_objects/src/api/invoice/invoice_draft.dart';
import 'package:json_annotation/json_annotation.dart';

part 'confirm_invoice_request.g.dart';

/// Corpo de `POST .../invoices/{id}/confirm`.
@JsonSerializable()
final class ConfirmInvoiceRequest {
  /// Cria o corpo.
  const new({required this.allowNegativeStock, this.invoice, this.checkout});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ConfirmInvoiceRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
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
