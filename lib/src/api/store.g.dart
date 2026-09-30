// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, unnecessary_lambdas, inference_failure_on_collection_literal

part of 'store.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Store _$StoreFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Store',
  json,
  ($checkedConvert) {
    final val = Store(
      name: $checkedConvert('name', (v) => v as String),
      isActive: $checkedConvert('isActive', (v) => v as bool),
      id: $checkedConvert('id', (v) => v as String?),
      legalName: $checkedConvert('legalName', (v) => v as String?),
      cnpj: $checkedConvert('cnpj', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      phone: $checkedConvert('phone', (v) => v as String?),
      address: $checkedConvert(
        'address',
        (v) =>
            v == null ? null : AddressEntry.fromJson(v as Map<String, dynamic>),
      ),
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
  },
);

Map<String, dynamic> _$StoreToJson(Store instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'legalName': instance.legalName,
  'cnpj': instance.cnpj,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address?.toJson(),
  'isActive': instance.isActive,
  'createdAt': instance.createdAt?.toJson(),
  'updatedAt': instance.updatedAt?.toJson(),
};

const _$StoreJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. Opcional na criação.'},
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'legalName': {'type': 'string', 'description': 'Razão social, ou `null`.'},
    'cnpj': {
      'type': 'string',
      'description': 'CNPJ só com dígitos, ou `null`.',
    },
    'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'address': {
      r'$ref': r'#/$defs/AddressEntry',
      'description': 'Endereço, ou `null`.',
    },
    'isActive': {
      'type': 'boolean',
      'description': 'Se a unidade está em operação.',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação, ou `null` no corpo de escrita.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração, ou `null` no corpo de escrita.',
    },
  },
  'required': ['name', 'isActive'],
  r'$defs': {
    'AddressEntry': {
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
        'neighborhood': {
          'type': 'string',
          'description': 'Bairro.',
          'default': '',
        },
        'city': {'type': 'string', 'description': 'Cidade.', 'default': ''},
        'state': {
          'type': 'string',
          'description': 'Estado (sigla de 2 letras, ex.: SP, RJ).',
          'default': '',
        },
      },
      'required': ['street'],
    },
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
