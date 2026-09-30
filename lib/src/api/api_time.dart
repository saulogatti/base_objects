import 'package:base_objects/src/constants/app_regular_exp.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

part 'api_time.g.dart';

/// Instante ISO 8601 com fuso, guardado em UTC (`API.md` §1.2).
@immutable
@JsonSerializable(dateTimeUtc: true)
final class ApiInstant {
  new({required this.value}) : assert(value.isUtc, 'datetime deve ser UTC.');
  factory fromJson(Map<String, dynamic> json) => _$ApiInstantFromJson(json);
  static Map<String, Object> get schema => _$ApiInstantJsonSchema;

  /// Instante em UTC.
  final DateTime value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is ApiInstant && value == other.value;

  /// Serializa em ISO 8601 UTC.
  Map<String, dynamic> toJson() => _$ApiInstantToJson(this);
}

/// Data de calendário `YYYY-MM-DD` (`API.md` §1.2).
@immutable
final class CalendarDate {
  /// Lê a string JSON.
  factory fromJson(Object? json) {
    if (json is! String) {
      throw const FormatException('date deve ser string YYYY-MM-DD.');
    }
    return CalendarDate.parse(json);
  }

  /// Interpreta [raw] e recusa hora, fuso e datas inexistentes.
  factory parse(String raw) {
    final match = AppRegularExp.calendarDateRegExp.firstMatch(raw);
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

  const new _(this.value);

  /// Literal `YYYY-MM-DD`.
  final String value;

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) => other is CalendarDate && value == other.value;

  /// Serializa o literal.
  String toJson() => value;

  @override
  String toString() => value;
}
