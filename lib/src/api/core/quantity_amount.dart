import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:meta/meta.dart';

/// Quantidade em string JSON com escala 3 (`API.md` §1.2).
@immutable
final class QuantityAmount {
  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('quantity deve ser string JSON.');
    }
    return QuantityAmount.parse(json);
  }

  /// Interpreta [raw] e normaliza para três casas.
  factory parse(String raw) => QuantityAmount._(canonicalizeScaled(raw, scale: scale));

  /// Cria uma quantidade a partir de um literal decimal canônico.
  const new _(this.value);

  /// Casas do contrato.
  static const int scale = 3;

  /// Literal canônico, por exemplo `"1.000"`.
  final String value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is QuantityAmount && value == other.value;

  /// Serializa com exatamente três casas.
  String toJson() => value;

  @override
  String toString() => value;
}
