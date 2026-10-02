import 'package:base_objects/src/api/invoice/invoice.dart';
import 'package:base_objects/src/api/receivable/receivable.dart';
import 'package:base_objects/src/api/service_order/service_order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'deliver_service_order_result.g.dart';

/// Resposta da entrega.
@JsonSerializable()
final class DeliverServiceOrderResult {
  /// Cria a resposta.
  const new({required this.serviceOrder, required this.invoice, required this.receivables});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$DeliverServiceOrderResultFromJson(json);

  /// Ordem entregue.
  final ServiceOrder serviceOrder;

  /// Nota de saída confirmada.
  final Invoice invoice;

  /// Parcelas geradas.
  final List<Receivable> receivables;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$DeliverServiceOrderResultToJson(this);
}
