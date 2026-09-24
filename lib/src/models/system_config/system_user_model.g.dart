// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable

part of 'system_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemUserModel _$SystemUserModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SystemUserModel', json, ($checkedConvert) {
      final val = SystemUserModel(
        name: $checkedConvert('name', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
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
      );
      return val;
    });

Map<String, dynamic> _$SystemUserModelToJson(SystemUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'name': instance.name,
      'phone': instance.phone,
      'description': instance.description,
      'email': instance.email,
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
      'type': 'string',
      'format': 'date-time',
      'description': 'Momento em que o registro foi criado.',
    },
    'updatedAt': {
      'type': 'string',
      'format': 'date-time',
      'description': 'Momento da última atualização do registro.',
    },
    'name': {
      'type': 'string',
      'description': 'Nome completo da pessoa ou razão social da empresa.',
    },
    'phone': {
      'type': 'string',
      'description': 'Número de telefone (opcional).',
    },
    'description': {'type': 'string'},
    'email': {'type': 'string'},
  },
  'required': ['name', 'email'],
};
