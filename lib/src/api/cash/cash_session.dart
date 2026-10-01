import 'package:base_objects/src/api/cash/cash_movement.dart';
import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_session.g.dart';

/// Turno de caixa.
@JsonSerializable()
final class CashSession {
  /// Cria o turno.
  const new({
    required this.id,
    required this.storeId,
    required this.registerId,
    required this.status,
    required this.openedBy,
    required this.openedAt,
    required this.openingAmount,
    required this.movements,
    this.closedBy,
    this.closedAt,
    this.countedAmount,
    this.expectedAmount,
    this.difference,
    this.closingNotes,
  });

  /// Lê o turno.
  factory fromJson(Map<String, dynamic> json) => _$CashSessionFromJson(json);

  /// Esquema JSON gerado para o turno.
  static Map<String, Object> get schema => _$CashSessionJsonSchema;

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Terminal.
  final String registerId;

  /// Situação.
  final CashSessionStatus status;

  /// Quem abriu.
  final String openedBy;

  /// Abertura.
  final ApiInstant openedAt;

  /// Fundo de troco.
  final MoneyAmount openingAmount;

  /// Quem fechou, ou `null`.
  final String? closedBy;

  /// Fechamento, ou `null`.
  final ApiInstant? closedAt;

  /// Valor contado, ou `null` enquanto aberto.
  final MoneyAmount? countedAmount;

  /// Valor esperado, ou `null` enquanto aberto.
  final MoneyAmount? expectedAmount;

  /// Diferença, ou `null` enquanto aberto.
  final MoneyAmount? difference;

  /// Observação do fechamento, ou `null`.
  final String? closingNotes;

  /// Movimentos do turno.
  final List<CashMovement> movements;

  /// Serializa o turno.
  Map<String, dynamic> toJson() => _$CashSessionToJson(this);
}
