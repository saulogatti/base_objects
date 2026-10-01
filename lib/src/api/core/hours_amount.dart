import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:meta/meta.dart';

/// Horas estimadas em string com escala 2 (`estimatedHours`, `API.md` §8.4).
@immutable
final class HoursAmount {
  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('estimatedHours deve ser string JSON.');
    }
    return HoursAmount.parse(json);
  }

  /// Interpreta [raw] e normaliza para duas casas.
  factory parse(String raw) => HoursAmount._(canonicalizeScaled(raw, scale: scale));

  /// Cria horas a partir de um literal decimal canônico.
  const new _(this.value);

  /// Casas do contrato (`numeric(6,2)`).
  static const int scale = 2;

  /// Literal canônico, por exemplo `"1.50"`.
  final String value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is HoursAmount && value == other.value;

  /// Serializa com exatamente duas casas.
  String toJson() => value;

  @override
  String toString() => value;
}
