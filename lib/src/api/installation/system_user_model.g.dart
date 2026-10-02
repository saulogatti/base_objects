// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'system_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemUserModel _$SystemUserModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SystemUserModel', json, ($checkedConvert) {
      final val = SystemUserModel(
        name: $checkedConvert('name', (v) => v as String),
        document: $checkedConvert(
          'document',
          (v) => Cpf.fromJson(v as Map<String, dynamic>),
        ),
        email: $checkedConvert('email', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        userType: $checkedConvert(
          'userType',
          (v) =>
              $enumDecodeNullable(
                _$SystemUserTypeEnumMap,
                v,
                unknownValue: SystemUserType.user,
              ) ??
              SystemUserType.user,
        ),
        phone: $checkedConvert('phone', (v) => v as String?),
        id: $checkedConvert('id', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        lastLoginAt: $checkedConvert(
          'lastLoginAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        password: $checkedConvert('password', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SystemUserModelToJson(SystemUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toJson(),
      'updatedAt': instance.updatedAt.toJson(),
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'document': instance.document.toJson(),
      'description': instance.description,
      'userType': _$SystemUserTypeEnumMap[instance.userType]!,
      'lastLoginAt': instance.lastLoginAt?.toUtc().toIso8601String(),
      'password': instance.password,
    };

const _$SystemUserModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'Identificador único da entidade (UUID v7).',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Momento em que o registro foi criado.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
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
    'document': {
      r'$ref': r'#/$defs/Cpf',
      'description': 'Documento de identificação da pessoa.',
    },
    'description': {'type': 'string', 'description': 'Descrição do usuário.'},
    'userType': {'type': 'object', 'description': 'Tipo de usuário.'},
    'lastLoginAt': {
      'type': 'string',
      'format': 'date-time',
      'description': 'Último login, ou `null` se ainda não houve login.',
    },
    'password': {
      'type': 'string',
      'description': 'Senha informada durante a instalação, ou `null`.',
    },
  },
  'required': ['email', 'name', 'document'],
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
    'Cpf': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'description': 'Valor original do documento.',
        },
      },
      'required': ['value'],
    },
  },
};

const _$SystemUserTypeEnumMap = {
  SystemUserType.superadmin: 'superadmin',
  SystemUserType.admin: 'admin',
  SystemUserType.user: 'user',
};
