// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'system_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SystemModel', json, ($checkedConvert) {
      final val = SystemModel(
        id: $checkedConvert('id', (v) => v as String),
        systemUser: $checkedConvert(
          'systemUser',
          (v) => SystemUserModel.fromJson(v as Map<String, dynamic>),
        ),
        serverUrl: $checkedConvert('serverUrl', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SystemModelToJson(SystemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'systemUser': instance.systemUser.toJson(),
      'serverUrl': instance.serverUrl,
      'createdAt': instance.createdAt.toJson(),
      'updatedAt': instance.updatedAt.toJson(),
    };

const _$SystemModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do registro de instalação.'},
    'systemUser': {
      r'$ref': r'#/$defs/SystemUserModel',
      'description': 'Responsável, sem senha.',
    },
    'serverUrl': {
      'type': 'string',
      'description': 'URL base da API que o cliente usa.',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação do registro.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração do registro.',
    },
  },
  'required': ['id', 'systemUser', 'serverUrl', 'createdAt', 'updatedAt'],
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
    'SystemUserModel': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID, ou `null` no pedido.'},
        'name': {'type': 'string', 'description': 'Nome.'},
        'email': {'type': 'string', 'description': 'E-mail.'},
        'document': {'type': 'string', 'description': 'CPF só com dígitos.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'description': {
          'type': 'string',
          'description': 'Descrição da rede, ou `null`.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação, ou `null` no pedido.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração, ou `null` no pedido.',
        },
      },
      'required': ['name', 'email', 'document'],
    },
  },
};
