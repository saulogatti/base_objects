// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, unnecessary_lambdas, inference_failure_on_collection_literal

part of 'address_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressEntry _$AddressEntryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AddressEntry', json, ($checkedConvert) {
      final val = AddressEntry(
        street: $checkedConvert('street', (v) => v as String),
        zipCode: $checkedConvert('zipCode', (v) => v as String? ?? ''),
        neighborhood: $checkedConvert(
          'neighborhood',
          (v) => v as String? ?? '',
        ),
        city: $checkedConvert('city', (v) => v as String? ?? ''),
        state: $checkedConvert('state', (v) => v as String? ?? ''),
      );
      return val;
    });

Map<String, dynamic> _$AddressEntryToJson(AddressEntry instance) =>
    <String, dynamic>{
      'street': instance.street,
      'zipCode': instance.zipCode,
      'neighborhood': instance.neighborhood,
      'city': instance.city,
      'state': instance.state,
    };

const _$AddressEntryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'street': {
      'type': 'string',
      'description': 'Logradouro (nome da rua, avenida, etc.).',
    },
    'zipCode': {
      'type': 'string',
      'description': 'CEP no formato com ou sem máscara.',
      'default': '',
    },
    'neighborhood': {'type': 'string', 'description': 'Bairro.', 'default': ''},
    'city': {'type': 'string', 'description': 'Cidade.', 'default': ''},
    'state': {
      'type': 'string',
      'description': 'Estado (sigla de 2 letras, ex.: SP, RJ).',
      'default': '',
    },
  },
  'required': ['street'],
};
