// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'user_upsert_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserUpsertRequest _$UserUpsertRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserUpsertRequest', json, ($checkedConvert) {
      final val = UserUpsertRequest(
        name: $checkedConvert('name', (v) => v as String),
        email: $checkedConvert('email', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String?),
        password: $checkedConvert('password', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$UserUpsertRequestToJson(UserUpsertRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'password': instance.password,
    };

const _$UserUpsertRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'name': {'type': 'string', 'description': 'Nome.'},
    'email': {'type': 'string', 'description': 'E-mail único.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'password': {
      'type': 'string',
      'description':
          'Senha em texto na criação. Na edição o servidor recusa o campo.',
    },
  },
  'required': ['name', 'email'],
};
