import 'package:meta/meta.dart';

/// Normaliza [raw] com no máximo [scale] casas e exatamente [scale] na saída.
///
/// Rejeita notação científica, ponto solto e qualquer valor que não seja um
/// literal decimal. Nunca passa por [double]. Lança [FormatException] quando
/// a entrada não respeita a escala informada.
String _canonicalizeScaled(String raw, {required int scale}) {
  final trimmed = raw.trim();
  if (!_isScaledLiteral(trimmed, scale)) {
    throw FormatException('Valor decimal inválido (máximo de $scale casas).', raw);
  }
  final negative = trimmed.startsWith('-');
  final body = negative ? trimmed.substring(1) : trimmed;
  final parts = body.split('.');
  var whole = parts[0];
  while (whole.length > 1 && whole.startsWith('0')) {
    whole = whole.substring(1);
  }
  final fraction = (parts.length == 2 ? parts[1] : '').padRight(scale, '0');
  final zeros = '0.${''.padRight(scale, '0')}';
  if ('$whole.$fraction' == zeros || (whole == '0' && fraction == ''.padRight(scale, '0'))) {
    return zeros;
  }
  final rendered = '$whole.$fraction';
  return negative ? '-$rendered' : rendered;
}

bool _isDigit(int unit) => unit >= 48 && unit <= 57;

bool _isScaledLiteral(String raw, int scale) {
  if (raw.isEmpty) {
    return false;
  }
  var body = raw;
  if (body.startsWith('-')) {
    body = body.substring(1);
  }
  if (body.isEmpty) {
    return false;
  }
  final dot = body.indexOf('.');
  if (dot != body.lastIndexOf('.')) {
    return false;
  }
  final whole = dot < 0 ? body : body.substring(0, dot);
  final fraction = dot < 0 ? '' : body.substring(dot + 1);
  if (whole.isEmpty || fraction.length > scale) {
    return false;
  }
  if (dot >= 0 && fraction.isEmpty) {
    return false;
  }
  return whole.codeUnits.every(_isDigit) && fraction.codeUnits.every(_isDigit);
}

/// Dinheiro em string JSON com escala 2 (`API.md` §1.2).
@immutable
final class MoneyAmount {
  /// Cria dinheiro a partir de um literal decimal canônico.
  const new _(this.value);

  /// Interpreta [raw] e o normaliza para duas casas decimais.
  ///
  /// Por exemplo, `'89.9'` é convertido para `'89.90'`.
  factory parse(String raw) => MoneyAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
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
  /// Cria uma quantidade a partir de um literal decimal canônico.
  const new _(this.value);

  /// Interpreta [raw] e normaliza para três casas.
  factory parse(String raw) =>
      QuantityAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
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
  /// Cria um percentual a partir de um literal decimal canônico.
  const new _(this.value);

  /// Interpreta [raw] e normaliza para três casas.
  factory parse(String raw) =>
      PercentAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
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
  /// Cria horas a partir de um literal decimal canônico.
  const new _(this.value);

  /// Interpreta [raw] e normaliza para duas casas.
  factory parse(String raw) => HoursAmount._(_canonicalizeScaled(raw, scale: scale));

  /// Lê a string JSON. Número JSON é recusado.
  factory fromJson(Object? json) {
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
