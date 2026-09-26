// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, inference_failure_on_collection_literal

part of 'installation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InstallationStatus _$InstallationStatusFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InstallationStatus', json, ($checkedConvert) {
      final val = InstallationStatus(installed: $checkedConvert('installed', (v) => v as bool));
      return val;
    });

Map<String, dynamic> _$InstallationStatusToJson(InstallationStatus instance) => <String, dynamic>{
  'installed': instance.installed,
};

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

SystemUserData _$SystemUserDataFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SystemUserData', json, ($checkedConvert) {
      final val = SystemUserData(
        name: $checkedConvert('name', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
        systemKey: $checkedConvert('systemKey', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SystemUserDataToJson(SystemUserData instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'systemKey': instance.systemKey,
  'description': instance.description,
};

const _$SystemUserDataJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'name': {'type': 'string', 'description': 'Nome do responsável.'},
    'email': {'type': 'string', 'description': 'E-mail do responsável.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'systemKey': {
      'type': 'string',
      'description': 'Chave de validade persistida. Sem checagem de licença nesta etapa.',
    },
    'description': {'type': 'string', 'description': 'Descrição da rede, ou `null`.'},
  },
  'required': ['name', 'email', 'systemKey'],
};

InstallationRequest _$InstallationRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InstallationRequest', json, ($checkedConvert) {
      final val = InstallationRequest(
        systemUserData: $checkedConvert(
          'systemUserData',
          (v) => SystemUserData.fromJson(v as Map<String, dynamic>),
        ),
        administratorPassword: $checkedConvert('administratorPassword', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$InstallationRequestToJson(InstallationRequest instance) => <String, dynamic>{
  'systemUserData': instance.systemUserData.toJson(),
  'administratorPassword': instance.administratorPassword,
};

const _$InstallationRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'systemUserData': {
      r'$ref': r'#/$defs/SystemUserData',
      'description': 'Responsável que vira o superadmin.',
    },
    'administratorPassword': {
      'type': 'string',
      'description': 'Senha inicial em texto. Não é persistida neste objeto.',
    },
  },
  'required': ['systemUserData', 'administratorPassword'],
  r'$defs': {
    'SystemUserData': {
      'type': 'object',
      'properties': {
        'name': {'type': 'string', 'description': 'Nome do responsável.'},
        'email': {'type': 'string', 'description': 'E-mail do responsável.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'systemKey': {
          'type': 'string',
          'description': 'Chave de validade persistida. Sem checagem de licença nesta etapa.',
        },
        'description': {'type': 'string', 'description': 'Descrição da rede, ou `null`.'},
      },
      'required': ['name', 'email', 'systemKey'],
    },
  },
};
