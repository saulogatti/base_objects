// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'create_cash_register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCashRegisterRequest _$CreateCashRegisterRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateCashRegisterRequest', json, ($checkedConvert) {
  final val = CreateCashRegisterRequest(
    name: $checkedConvert('name', (v) => v as String),
    id: $checkedConvert('id', (v) => v as String?),
    isActive: $checkedConvert('isActive', (v) => v as bool? ?? true),
  );
  return val;
});

Map<String, dynamic> _$CreateCashRegisterRequestToJson(
  CreateCashRegisterRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'isActive': instance.isActive,
};

const _$CreateCashRegisterRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID. O servidor gera se vier `null`.',
    },
    'name': {'type': 'string', 'description': 'Nome do terminal.'},
    'isActive': {
      'type': 'boolean',
      'description': 'Padrão `true` quando o corpo omite.',
      'default': true,
    },
  },
  'required': ['name'],
};
