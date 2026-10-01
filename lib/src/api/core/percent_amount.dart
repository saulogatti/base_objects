import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:meta/meta.dart';

/// Percentual em string JSON com escala 3 (`feePercent`, `API.md` §1.2).
@immutable
final class PercentAmount {
  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('percent deve ser string JSON.');
    }
    return PercentAmount.parse(json);
  }

  /// Interpreta [raw] e normaliza para três casas.
  factory parse(String raw) => PercentAmount._(canonicalizeScaled(raw, scale: scale));

  /// Cria um percentual a partir de um literal decimal canônico.
  const new _(this.value);

  /// Casas do contrato.
  static const int scale = 3;

  /// Literal canônico, por exemplo `"3.500"`.
  final String value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is PercentAmount && value == other.value;

  /// Serializa com exatamente três casas.
  String toJson() => value;

  @override
  String toString() => value;
}
