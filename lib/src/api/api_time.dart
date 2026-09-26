import 'package:meta/meta.dart';

/// Data de calendário `YYYY-MM-DD` (`API.md` §1.2).
@immutable
final class CalendarDate {
  const CalendarDate._(this.value);

  /// Interpreta [raw] e recusa hora, fuso e datas inexistentes.
  factory CalendarDate.parse(String raw) {
    final match = RegExp(r'^(\d{4})-(\d{2})-(\d{2})$').firstMatch(raw);
    if (match == null) {
      throw FormatException('date deve ser YYYY-MM-DD.', raw);
    }
    final year = int.parse(match.group(1)!);
    final month = int.parse(match.group(2)!);
    final day = int.parse(match.group(3)!);
    final parsed = DateTime.utc(year, month, day);
    if (parsed.year != year || parsed.month != month || parsed.day != day) {
      throw FormatException('date inválida no calendário.', raw);
    }
    return CalendarDate._(raw);
  }

  /// Lê a string JSON.
  factory CalendarDate.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('date deve ser string YYYY-MM-DD.');
    }
    return CalendarDate.parse(json);
  }

  /// Literal `YYYY-MM-DD`.
  final String value;

  /// Serializa o literal.
  String toJson() => value;

  @override
  bool operator ==(Object other) => other is CalendarDate && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => value;
}

/// Instante ISO 8601 com fuso, guardado em UTC (`API.md` §1.2).
@immutable
final class ApiInstant {
  const ApiInstant._(this.value);

  /// Interpreta [raw] com `Z` ou `±HH:MM` e converte para UTC.
  factory ApiInstant.parse(String raw) {
    final hasZone = raw.endsWith('Z') || RegExp(r'[+-]\d{2}:\d{2}$').hasMatch(raw);
    if (!hasZone) {
      throw FormatException('datetime deve incluir fuso (Z ou ±HH:MM).', raw);
    }
    return ApiInstant._(DateTime.parse(raw).toUtc());
  }

  /// Lê a string JSON.
  factory ApiInstant.fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('datetime deve ser string ISO 8601.');
    }
    return ApiInstant.parse(json);
  }

  /// Instante em UTC.
  final DateTime value;

  /// Serializa em ISO 8601 UTC.
  String toJson() => value.toUtc().toIso8601String();

  @override
  bool operator ==(Object other) => other is ApiInstant && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => toJson();
}
