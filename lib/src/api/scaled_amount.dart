import 'package:meta/meta.dart';

/// Normaliza [raw] com no máximo [scale] casas e exatamente [scale] na saída.
///
/// Rejeita notação científica, ponto solto e qualquer valor que não seja um
/// literal decimal. Nunca passa por [double].
String _canonicalizeScaled(String raw, {required int scale}) {
  final trimmed = raw.trim();
  final pattern = RegExp('^-?\\d+(\\.\\d{1,$scale})?\\$');
  if (!pattern.hasMatch(trimmed)) {
    throw FormatException('Valor decimal inválido (máximo de $scale casas).', raw);
  }
  final negative = trimmed.startsWith('-');
  final body = negative ? trimmed.substring(1) : trimmed;
  final parts = body.split('.');
  final whole = parts[0].replaceFirst(RegExp(r'^0+(?=\\d)'), '');
  final fraction = (parts.length == 2 ? parts[1] : '').padRight(scale, '0');
  if (RegExp(r'^0+$').hasMatch('$whole$fraction')) {
    return '0.${''.padRight(scale, '0')}';
  }
  final rendered = '$whole.$fraction';
  return negative ? '-$rendered' : rendered;
}

/// Dinheiro em string JSON com escala 2 (`API.md` §1.2).
@immutable
final class MoneyAmount {
  const MoneyAmount._(this.value);

  /// Interpreta [raw]. Aceita `"89.9"` e grava `"89.90"`.
  factory MoneyAmount.parse(String raw) => MoneyAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory MoneyAmount.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('money deve ser string JSON.');
    }
    return MoneyAmount.parse(json);
  }

  /// Casas do contrato.
  static const int scale = 2;

  /// Literal canônico, por exemplo `"1299.90"`.
  final String value;

  /// Serializa com exatamente duas casas.
  String toJson() => value;

  @override
  bool operator ==(Object other) => other is MoneyAmount && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}

/// Quantidade em string JSON com escala 3 (`API.md` §1.2).
@immutable
final class QuantityAmount {
  const QuantityAmount._(this.value);

  /// Interpreta [raw] e normaliza para três casas.
  factory QuantityAmount.parse(String raw) =>
      QuantityAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory QuantityAmount.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('quantity deve ser string JSON.');
    }
    return QuantityAmount.parse(json);
  }

  /// Casas do contrato.
  static const int scale = 3;

  /// Literal canônico, por exemplo `"1.000"`.
  final String value;

  /// Serializa com exatamente três casas.
  String toJson() => value;

  @override
  bool operator ==(Object other) => other is QuantityAmount && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}

/// Percentual em string JSON com escala 3 (`feePercent`, `API.md` §1.2).
@immutable
final class PercentAmount {
  const PercentAmount._(this.value);

  /// Interpreta [raw] e normaliza para três casas.
  factory PercentAmount.parse(String raw) =>
      PercentAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory PercentAmount.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('percent deve ser string JSON.');
    }
    return PercentAmount.parse(json);
  }

  /// Casas do contrato.
  static const int scale = 3;

  /// Literal canônico, por exemplo `"3.500"`.
  final String value;

  /// Serializa com exatamente três casas.
  String toJson() => value;

  @override
  bool operator ==(Object other) => other is PercentAmount && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}

/// Horas estimadas em string com escala 2 (`estimatedHours`, `API.md` §8.4).
@immutable
final class HoursAmount {
  const HoursAmount._(this.value);

  /// Interpreta [raw] e normaliza para duas casas.
  factory HoursAmount.parse(String raw) => HoursAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory HoursAmount.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('estimatedHours deve ser string JSON.');
    }
    return HoursAmount.parse(json);
  }

  /// Casas do contrato (`numeric(6,2)`).
  static const int scale = 2;

  /// Literal canônico, por exemplo `"1.50"`.
  final String value;

  /// Serializa com exatamente duas casas.
  String toJson() => value;

  @override
  bool operator ==(Object other) => other is HoursAmount && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}
