// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable

part of 'system_activation_key.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemActivationKeyModel _$SystemActivationKeyModelFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SystemActivationKeyModel', json, ($checkedConvert) {
  final val = SystemActivationKeyModel(
    activationKey: $checkedConvert('activationKey', (v) => v as String),
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

Map<String, dynamic> _$SystemActivationKeyModelToJson(
  SystemActivationKeyModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  'activationKey': instance.activationKey,
};

const _$SystemActivationKeyModelJsonSchema = {
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
    'activationKey': {'type': 'string', 'description': 'Chave de ativação.'},
  },
  'required': ['activationKey'],
};
