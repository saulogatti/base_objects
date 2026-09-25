// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks

part of 'cpf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cpf _$CpfFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Cpf', json, ($checkedConvert) {
      final val = Cpf($checkedConvert('value', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$CpfToJson(Cpf instance) => <String, dynamic>{
  'value': instance.value,
};

const _$CpfJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'value': {'type': 'string'},
  },
  'required': ['value'],
};
