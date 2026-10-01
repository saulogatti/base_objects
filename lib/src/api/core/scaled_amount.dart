/// Normaliza [raw] com no máximo [scale] casas e exatamente [scale] na saída.
///
/// Rejeita notação científica, ponto solto e qualquer valor que não seja um
/// literal decimal. Nunca passa por [double]. Lança [FormatException] quando
/// a entrada não respeita a escala informada.
String canonicalizeScaled(String raw, {required int scale}) {
  final trimmed = raw.trim();
  if (!isScaledLiteral(trimmed, scale)) {
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

bool isDigit(int unit) => unit >= 48 && unit <= 57;

bool isScaledLiteral(String raw, int scale) {
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
  return whole.codeUnits.every(isDigit) && fraction.codeUnits.every(isDigit);
}
