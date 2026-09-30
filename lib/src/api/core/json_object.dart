/// Lê um objeto JSON livre, como `details`, `beforeData` ou `afterData`.
///
/// [json] pode ser `null` ou um mapa cujos valores são escalares, listas ou
/// outros mapas. Mapas e listas aninhados são convertidos recursivamente para
/// valores JSON; os nomes das chaves são convertidos para strings. Retorna
/// `null` quando [json] é `null`.
///
/// Lança [FormatException] se a raiz não for um mapa ou se um valor não for
/// compatível com JSON.
Map<String, Object?>? readJsonObject(Object? json) {
  if (json == null) {
    return null;
  }
  if (json is! Map) {
    throw const FormatException('objeto JSON esperado.');
  }
  return {for (final entry in json.entries) '${entry.key}': _readJsonValue(entry.value)};
}

/// Retorna [value] sem transformação para a serialização JSON.
///
/// Retorna `null` quando [value] é `null`.
Map<String, Object?>? writeJsonObject(Map<String, Object?>? value) => value;

Object? _readJsonValue(Object? value) {
  if (value is Map) {
    return readJsonObject(value);
  }
  if (value is List) {
    return [for (final item in value) _readJsonValue(item)];
  }
  if (value == null || value is String || value is num || value is bool) {
    return value;
  }
  throw FormatException('valor JSON não suportado: ${value.runtimeType}.');
}
