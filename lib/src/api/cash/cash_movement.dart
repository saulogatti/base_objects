import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_movement.g.dart';

/// Movimento de um turno.
@JsonSerializable()
final class CashMovement {
  /// Cria o movimento.
  const new({
    required this.id,
    required this.sessionId,
    required this.type,
    required this.methodName,
    required this.affectsCashDrawer,
    required this.amount,
    required this.feePercent,
    required this.feeAmount,
    required this.netAmount,
    required this.createdAt,
    this.paymentMethodId,
    this.expectedSettlementAt,
    this.description,
    this.referenceType,
    this.referenceId,
    this.refundedMovementId,
    this.createdBy,
  });

  /// Lê o movimento.
  factory fromJson(Map<String, dynamic> json) => _$CashMovementFromJson(json);

  static Map<String, Object> get schema => _$CashMovementJsonSchema;

  /// UUID.
  final String id;

  /// Turno.
  final String sessionId;

  /// Natureza.
  final CashMovementType type;

  /// Forma, ou `null`.
  final String? paymentMethodId;

  /// Nome da forma no momento do lançamento.
  final String methodName;

  /// Se afetou a gaveta.
  final bool affectsCashDrawer;

  /// Valor. Positivo entra, negativo sai.
  final MoneyAmount amount;

  /// Taxa percentual, escala 3.
  final PercentAmount feePercent;

  /// Valor da taxa.
  final MoneyAmount feeAmount;

  /// Líquido (`amount` menos a taxa).
  final MoneyAmount netAmount;

  /// Previsão de liquidação, ou `null`.
  final ApiInstant? expectedSettlementAt;

  /// Descrição, ou `null`.
  final String? description;

  /// Tipo da referência, ou `null`.
  final String? referenceType;

  /// Id da referência, ou `null`.
  final String? referenceId;

  /// Movimento estornado, ou `null`.
  final String? refundedMovementId;

  /// Autor, ou `null`.
  final String? createdBy;

  /// Inclusão.
  final ApiInstant createdAt;

  /// Serializa o movimento.
  Map<String, dynamic> toJson() => _$CashMovementToJson(this);
}
