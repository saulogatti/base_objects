import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

/// Envelope `{ items, total, limit, offset }` das listagens (`API.md` §1.7).
@JsonSerializable(genericArgumentFactories: true)
final class ApiPage<T> {
  /// Cria a página.
  const new({
    required this.items,
    required this.total,
    required this.limit,
    required this.offset,
  });

  /// Lê o envelope.
  ///
  /// [fromJsonT] converte cada item da lista `items` a partir do valor JSON.
  factory fromJson(Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiPageFromJson(json, fromJsonT);

  /// Página corrente.
  final List<T> items;

  /// Total que casa o filtro, independente de [limit].
  final int total;

  /// `limit` efetivo.
  final int limit;

  /// `offset` efetivo.
  final int offset;

  /// Serializa o envelope.
  ///
  /// [toJsonT] converte cada item da lista `items` em valor JSON.
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) => _$ApiPageToJson(this, toJsonT);
}
