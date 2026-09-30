// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'cash_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashRegister _$CashRegisterFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashRegister', json, ($checkedConvert) {
      final val = CashRegister(
        id: $checkedConvert('id', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CashRegisterToJson(CashRegister instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'name': instance.name,
      'isActive': instance.isActive,
      'createdAt': instance.createdAt.toJson(),
    };

const _$CashRegisterJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'name': {'type': 'string', 'description': 'Nome, por exemplo `Caixa 1`.'},
    'isActive': {'type': 'boolean', 'description': 'Se o terminal está ativo.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
  },
  'required': ['id', 'storeId', 'name', 'isActive', 'createdAt'],
  r'$defs': {
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};
