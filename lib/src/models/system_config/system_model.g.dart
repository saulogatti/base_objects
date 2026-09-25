// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks

part of 'system_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemModel _$SystemModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SystemModel', json, ($checkedConvert) {
      final val = SystemModel(
        systemUser: $checkedConvert(
          'systemUser',
          (v) => SystemUserModel.fromJson(v as Map<String, dynamic>),
        ),
        activationKey: $checkedConvert(
          'activationKey',
          (v) => SystemActivationKeyModel.fromJson(v as Map<String, dynamic>),
        ),
        serverUrl: $checkedConvert('serverUrl', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SystemModelToJson(SystemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'systemUser': instance.systemUser.toJson(),
      'activationKey': instance.activationKey.toJson(),
      'serverUrl': instance.serverUrl,
    };

const _$SystemModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'Identificador único da entidade (UUID v7).',
    },
    'createdAt': {
      'type': 'string',
      'format': 'date-time',
      'description': 'Momento em que o registro foi criado.',
    },
    'updatedAt': {
      'type': 'string',
      'format': 'date-time',
      'description': 'Momento da última atualização do registro.',
    },
    'systemUser': {
      r'$ref': r'#/$defs/SystemUserModel',
      'description':
          'Responsável pela instalação, que vira o usuário proprietário.',
    },
    'activationKey': {
      r'$ref': r'#/$defs/SystemActivationKeyModel',
      'description': 'Chave de ativação da instalação.',
    },
    'serverUrl': {
      'type': 'string',
      'description': 'URL base do servidor da API que esta instalação usa (ex.:\n`https://api.minhaloja.com.br`).',
    },
  },
  'required': ['systemUser', 'activationKey', 'serverUrl'],
  r'$defs': {
    'Cpf': {
      'type': 'object',
      'properties': {
        'value': {'type': 'string'},
      },
      'required': ['value'],
    },
    'SystemUserModel': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'Identificador único da entidade (UUID v7).',
        },
        'createdAt': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Momento em que o registro foi criado.',
        },
        'updatedAt': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Momento da última atualização do registro.',
        },
        'email': {
          'type': 'string',
          'description': 'Endereço de e-mail (opcional).',
        },
        'name': {
          'type': 'string',
          'description': 'Nome completo da pessoa ou razão social da empresa.',
        },
        'phone': {
          'type': 'string',
          'description': 'Número de telefone (opcional).',
        },
        'document': {r'$ref': r'#/$defs/Cpf'},
        'description': {
          'type': 'string',
          'description': 'Descrição do usuário.',
        },
        'userType': {'type': 'object', 'description': 'Tipo de usuário.'},
        'lastLoginAt': {'type': 'string', 'format': 'date-time'},
      },
      'required': ['email', 'name', 'document'],
    },
    'SystemActivationKeyModel': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'Identificador único da entidade (UUID v7).',
        },
        'createdAt': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Momento em que o registro foi criado.',
        },
        'updatedAt': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Momento da última atualização do registro.',
        },
        'activationKey': {
          'type': 'string',
          'description': 'Chave de ativação.',
        },
      },
      'required': ['activationKey'],
    },
  },
};
