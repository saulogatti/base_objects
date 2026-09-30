// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'installation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallationRequest _$InstallationRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InstallationRequest', json, ($checkedConvert) {
      final val = InstallationRequest(
        systemModel: $checkedConvert(
          'systemModel',
          (v) => SystemModel.fromJson(v as Map<String, dynamic>),
        ),
        administratorPassword: $checkedConvert(
          'administratorPassword',
          (v) => v as String,
        ),
      );
      return val;
    });

Map<String, dynamic> _$InstallationRequestToJson(
  InstallationRequest instance,
) => <String, dynamic>{
  'systemModel': instance.systemModel.toJson(),
  'administratorPassword': instance.administratorPassword,
};

const _$InstallationRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'systemModel': {
      r'$ref': r'#/$defs/SystemModel',
      'description': 'Responsável que vira o superadmin.',
    },
    'administratorPassword': {
      'type': 'string',
      'description': 'Senha inicial em texto. Não é persistida neste objeto.',
    },
  },
  'required': ['systemModel', 'administratorPassword'],
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
        'password': {'type': 'string'},
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
    'SystemModel': {
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
    },
  },
};

InstallationStatus _$InstallationStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InstallationStatus', json, ($checkedConvert) {
      final val = InstallationStatus(
        installed: $checkedConvert('installed', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$InstallationStatusToJson(InstallationStatus instance) =>
    <String, dynamic>{'installed': instance.installed};

const _$InstallationStatusJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'installed': {
      'type': 'boolean',
      'description': 'Se já existe o único responsável da instalação.',
    },
  },
  'required': ['installed'],
};
