import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_method_total.g.dart';

/// Total de uma forma no resumo do caixa.
@JsonSerializable()
final class CashMethodTotal {
  /// Cria o total.
  const new({required this.paymentMethodId, required this.name, required this.amount});

  /// Lê o total.
  factory fromJson(Map<String, dynamic> json) => _$CashMethodTotalFromJson(json);

  /// Esquema JSON gerado para o total.
  static Map<String, Object> get schema => _$CashMethodTotalJsonSchema;

  /// Forma.
  final String paymentMethodId;

  /// Nome da forma.
  final String name;

  /// Soma.
  final MoneyAmount amount;

  /// Serializa o total.
  Map<String, dynamic> toJson() => _$CashMethodTotalToJson(this);
}
