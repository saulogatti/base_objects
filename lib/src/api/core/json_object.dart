/// Lê um objeto JSON livre (`details`, `beforeData`, `afterData`).
Map<String, Object?>? readJsonObject(Object? json) {
  if (json == null) {
    return null;
  }
  if (json is! Map) {
    throw const FormatException('objeto JSON esperado.');
  }
  return {for (final entry in json.entries) '${entry.key}': _readJsonValue(entry.value)};
}

/// Devolve o objeto já normalizado para o `toJson`.
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
