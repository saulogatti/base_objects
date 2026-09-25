// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks

part of 'cnpj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cnpj _$CnpjFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Cnpj', json, ($checkedConvert) {
      final val = Cnpj($checkedConvert('value', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$CnpjToJson(Cnpj instance) => <String, dynamic>{
  'value': instance.value,
};

const _$CnpjJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'value': {'type': 'string'},
  },
  'required': ['value'],
};
