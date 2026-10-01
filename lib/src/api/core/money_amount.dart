import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:meta/meta.dart';

/// Dinheiro em string JSON com escala 2 (`API.md` §1.2).
@immutable
final class MoneyAmount {
  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('money deve ser string JSON.');
    }
    return MoneyAmount.parse(json);
  }

  /// Interpreta [raw] e o normaliza para duas casas decimais.
  ///
  /// Por exemplo, `'89.9'` é convertido para `'89.90'`.
  factory parse(String raw) => MoneyAmount._(canonicalizeScaled(raw, scale: scale));

  /// Cria dinheiro a partir de um literal decimal canônico.
  const new _(this.value);

  /// Casas do contrato.
  static const int scale = 2;

  /// Literal canônico, por exemplo `"1299.90"`.
  final String value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is MoneyAmount && value == other.value;

  /// Serializa com exatamente duas casas.
  String toJson() => value;

  @override
  String toString() => value;
}
