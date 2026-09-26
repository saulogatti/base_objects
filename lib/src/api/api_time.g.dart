// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, unnecessary_lambdas, inference_failure_on_collection_literal

part of 'api_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiInstant _$ApiInstantFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiInstant', json, ($checkedConvert) {
      final val = ApiInstant(
        value: $checkedConvert('value', (v) => DateTime.parse(v as String)),
      );
      return val;
    });

Map<String, dynamic> _$ApiInstantToJson(ApiInstant instance) =>
    <String, dynamic>{'value': instance.value.toUtc().toIso8601String()};

const _$ApiInstantJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'value': {
      'type': 'string',
      'format': 'date-time',
      'description': 'Instante em UTC.',
    },
  },
  'required': ['value'],
};
