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
        email: $checkedConvert('email', (v) => v as String),
        document: $checkedConvert('document', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String?),
        phone: $checkedConvert('phone', (v) => v as String?),
        description: $checkedConvert('description', (v) => v as String?),
        createdAt: $checkedConvert(
          'createdAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        updatedAt: $checkedConvert(
          'updatedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$SystemUserModelToJson(SystemUserModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'document': instance.document,
      'phone': instance.phone,
      'description': instance.description,
      'createdAt': instance.createdAt?.toJson(),
      'updatedAt': instance.updatedAt?.toJson(),
    };

const _$SystemUserModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
