// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'installation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallationRequest _$InstallationRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InstallationRequest', json, ($checkedConvert) {
      final val = InstallationRequest(
        systemUser: $checkedConvert(
          'systemUser',
          (v) => SystemUserModel.fromJson(v as Map<String, dynamic>),
        ),
        activationKey: $checkedConvert('activationKey', (v) => v as String),
        administratorPassword: $checkedConvert(
          'administratorPassword',
          (v) => v as String,
        ),
        serverUrl: $checkedConvert('serverUrl', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$InstallationRequestToJson(
  InstallationRequest instance,
) => <String, dynamic>{
  'systemUser': instance.systemUser.toJson(),
  'activationKey': instance.activationKey,
  'administratorPassword': instance.administratorPassword,
  'serverUrl': instance.serverUrl,
};

const _$InstallationRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'systemUser': {
      r'$ref': r'#/$defs/SystemUserModel',
      'description': 'Responsável que vira o superadmin. Sem senha.',
    },
    'activationKey': {
      'type': 'string',
      'description':
          'Chave comparada com `INSTALLATION_KEY`. Não volta na resposta.',
    },
    'administratorPassword': {
      'type': 'string',
      'description': 'Senha inicial em texto. Não volta na resposta.',
    },
    'serverUrl': {
      'type': 'string',
      'description': 'URL base da API que esta instalação usa.',
    },
  },
  'required': [
    'systemUser',
    'activationKey',
    'administratorPassword',
    'serverUrl',
  ],
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
