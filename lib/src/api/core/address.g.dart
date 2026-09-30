// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Address', json, ($checkedConvert) {
      final val = Address(
        street: $checkedConvert('street', (v) => v as String?),
        zipCode: $checkedConvert('zipCode', (v) => v as String?),
        neighborhood: $checkedConvert('neighborhood', (v) => v as String?),
        city: $checkedConvert('city', (v) => v as String?),
        state: $checkedConvert('state', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
  'street': instance.street,
  'zipCode': instance.zipCode,
  'neighborhood': instance.neighborhood,
  'city': instance.city,
  'state': instance.state,
};

const _$AddressJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'street': {
      'type': 'string',
      'description': 'Logradouro (nome da rua, avenida, etc.), ou `null`.',
    },
    'zipCode': {
      'type': 'string',
      'description': 'CEP com ou sem máscara, ou `null`.',
    },
    'neighborhood': {'type': 'string', 'description': 'Bairro, ou `null`.'},
    'city': {'type': 'string', 'description': 'Cidade, ou `null`.'},
    'state': {
      'type': 'string',
      'description': 'Estado (sigla de 2 letras, ex.: SP, RJ), ou `null`.',
    },
  },
};
