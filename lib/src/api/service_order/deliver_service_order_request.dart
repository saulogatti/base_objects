import 'package:base_objects/src/api/invoice/invoice_checkout.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deliver_service_order_request.g.dart';

/// Corpo de `POST .../deliver`.
@JsonSerializable()
final class DeliverServiceOrderRequest {
  /// Cria o corpo.
  const new({
    required this.deliveredToName,
    required this.invoiceId,
    required this.checkout,
    this.notes,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$DeliverServiceOrderRequestFromJson(json);

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
