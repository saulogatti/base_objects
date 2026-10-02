// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) =>
    $checkedCreate('User', json, ($checkedConvert) {
      final val = User(
        name: $checkedConvert('name', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        isSuperadmin: $checkedConvert('isSuperadmin', (v) => v as bool),
        id: $checkedConvert('id', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) => v == null ? null : DateTime.parse(v as String),
        ),
        phone: $checkedConvert('phone', (v) => v as String?),
        lastLoginAt: $checkedConvert(
          'lastLoginAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toJson(),
  'updatedAt': instance.updatedAt.toJson(),
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'isActive': instance.isActive,
  'isSuperadmin': instance.isSuperadmin,
  'lastLoginAt': instance.lastLoginAt?.toJson(),
};

const _$UserJsonSchema = {
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
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'email': {'type': 'string', 'description': 'E-mail único.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'isActive': {'type': 'boolean', 'description': 'Se a conta pode entrar.'},
    'isSuperadmin': {
      'type': 'boolean',
      'description': 'Se a conta é a de manutenção.',
    },
    'lastLoginAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Último login, ou `null`.',
    },
  },
  'required': ['name', 'email', 'isActive', 'isSuperadmin'],
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
