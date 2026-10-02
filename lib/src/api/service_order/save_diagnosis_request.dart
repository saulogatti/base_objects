import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/quantity_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'save_diagnosis_request.g.dart';

/// Item enviado no diagnóstico. Sem total calculado.
@JsonSerializable()
final class DiagnosisItemRequest {
  /// Cria o item.
  const new({
    required this.id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.productId,
    this.serviceId,
    this.unitCost,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) => _$DiagnosisItemRequestFromJson(json);

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

  /// Custo unitário informado pelo cliente, ou `null`.
  final MoneyAmount? unitCost;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$DiagnosisItemRequestToJson(this);
}

/// Corpo de `PUT .../diagnosis`.
@JsonSerializable()
final class SaveDiagnosisRequest {
  /// Cria o corpo.
  const new({
    required this.diagnosis,
    required this.sendQuote,
    required this.items,
    this.repairNotes,
    this.technicianId,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$SaveDiagnosisRequestFromJson(json);

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
