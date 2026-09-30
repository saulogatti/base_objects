// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiPage<T> _$ApiPageFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => $checkedCreate('ApiPage', json, ($checkedConvert) {
  final val = ApiPage<T>(
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>).map(fromJsonT).toList(),
    ),
    total: $checkedConvert('total', (v) => (v as num).toInt()),
    limit: $checkedConvert('limit', (v) => (v as num).toInt()),
    offset: $checkedConvert('offset', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$ApiPageToJson<T>(
  ApiPage<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'items': instance.items.map(toJsonT).toList(),
  'total': instance.total,
  'limit': instance.limit,
  'offset': instance.offset,
};

const _$ApiPageJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'items': {
      'type': 'array',
      'items': {'type': 'object'},
      'description': 'Página corrente.',
    },
    'total': {
      'type': 'integer',
      'description': 'Total que casa o filtro, independente de [limit].',
    },
    'limit': {'type': 'integer', 'description': '`limit` efetivo.'},
    'offset': {'type': 'integer', 'description': '`offset` efetivo.'},
  },
  'required': ['items', 'total', 'limit', 'offset'],
};
