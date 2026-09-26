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
