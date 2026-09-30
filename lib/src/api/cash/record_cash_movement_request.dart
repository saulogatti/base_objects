import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'record_cash_movement_request.g.dart';

/// Corpo de suprimento, sangria, despesa ou acerto.
@JsonSerializable()
final class RecordCashMovementRequest {
  /// Cria o corpo.
  const new({
    required this.id,
    required this.type,
    required this.amount,
    required this.reason,
    this.direction,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$RecordCashMovementRequestFromJson(json);

  static Map<String, Object> get schema => _$RecordCashMovementRequestJsonSchema;

  /// UUID do movimento. Também é a chave de idempotência.
  final String id;

  /// `supply`, `withdrawal`, `expense` ou `adjustment`.
  final CashMovementType type;

  /// Valor sempre positivo. O servidor aplica o sinal.
  final MoneyAmount amount;

  /// Justificativa obrigatória.
  final String reason;

  /// Sentido do acerto. As outras naturezas ignoram.
  final CashAdjustmentDirection? direction;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RecordCashMovementRequestToJson(this);
}
