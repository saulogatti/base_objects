import 'package:base_objects/src/api/core/percent_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_method.g.dart';

/// Forma de pagamento (`API.md` §12).
@JsonSerializable()
final class PaymentMethod {
  /// Cria a forma.
  const new({
    required this.id,
    required this.code,
    required this.name,
    required this.affectsCashDrawer,
    required this.allowsInstallments,
    required this.settlementDays,
    required this.feePercent,
    required this.isActive,
    required this.sortOrder,
  });

  /// Lê a forma.
  factory fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  /// Esquema JSON gerado para a forma de pagamento.
  static Map<String, Object> get schema => _$PaymentMethodJsonSchema;

  /// UUID.
  final String id;

  /// Código estável, por exemplo `credit`.
  final String code;

  /// Nome de exibição.
  final String name;

  /// Se o valor entra na gaveta.
  final bool affectsCashDrawer;

  /// Se aceita mais de uma parcela.
  final bool allowsInstallments;

  /// Dias até a liquidação.
  final int settlementDays;

  /// Taxa percentual, escala 3.
  final PercentAmount feePercent;

  /// Se a forma está ativa.
  final bool isActive;

  /// Ordem de exibição.
  final int sortOrder;

  /// Serializa a forma.
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
