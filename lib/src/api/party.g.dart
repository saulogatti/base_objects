// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, unnecessary_lambdas, inference_failure_on_collection_literal

part of 'party.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Customer',
  json,
  ($checkedConvert) {
    final val = Customer(
      name: $checkedConvert('name', (v) => v as String),
      isActive: $checkedConvert('isActive', (v) => v as bool),
      id: $checkedConvert('id', (v) => v as String?),
      cpf: $checkedConvert('cpf', (v) => v as String?),
      email: $checkedConvert('email', (v) => v as String?),
      phone: $checkedConvert('phone', (v) => v as String?),
      address: $checkedConvert(
        'address',
        (v) =>
            v == null ? null : AddressEntry.fromJson(v as Map<String, dynamic>),
      ),
      notes: $checkedConvert('notes', (v) => v as String?),
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

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cpf': instance.cpf,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address?.toJson(),
  'notes': instance.notes,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt?.toJson(),
  'updatedAt': instance.updatedAt?.toJson(),
};

const _$CustomerJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID. Opcional no corpo; obrigatório na resposta.',
    },
    'name': {'type': 'string', 'description': 'Nome.'},
    'cpf': {'type': 'string', 'description': 'CPF só com dígitos, ou `null`.'},
    'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'address': {
      r'$ref': r'#/$defs/AddressEntry',
      'description': 'Endereço, ou `null`.',
    },
    'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
    'isActive': {'type': 'boolean', 'description': 'Se o cadastro está ativo.'},
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

Device _$DeviceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Device', json, ($checkedConvert) {
      final val = Device(
        customerId: $checkedConvert('customerId', (v) => v as String),
        brand: $checkedConvert('brand', (v) => v as String),
        model: $checkedConvert('model', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String?),
        color: $checkedConvert('color', (v) => v as String?),
        imei: $checkedConvert('imei', (v) => v as String?),
        serialNumber: $checkedConvert('serialNumber', (v) => v as String?),
        notes: $checkedConvert('notes', (v) => v as String?),
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

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
  'id': instance.id,
  'customerId': instance.customerId,
  'brand': instance.brand,
  'model': instance.model,
  'color': instance.color,
  'imei': instance.imei,
  'serialNumber': instance.serialNumber,
  'notes': instance.notes,
  'createdAt': instance.createdAt?.toJson(),
  'updatedAt': instance.updatedAt?.toJson(),
};

const _$DeviceJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID. Opcional no corpo; obrigatório na resposta.',
    },
    'customerId': {'type': 'string', 'description': 'Dono do aparelho.'},
    'brand': {'type': 'string', 'description': 'Marca.'},
    'model': {'type': 'string', 'description': 'Modelo.'},
    'color': {'type': 'string', 'description': 'Cor, ou `null`.'},
    'imei': {'type': 'string', 'description': 'IMEI, ou `null`.'},
    'serialNumber': {
      'type': 'string',
      'description': 'Número de série, ou `null`.',
    },
    'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Criação, ou `null` no corpo de escrita.',
    },
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração, ou `null` no corpo de escrita.',
    },
  },
  'required': ['customerId', 'brand', 'model'],
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

Supplier _$SupplierFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Supplier',
  json,
  ($checkedConvert) {
    final val = Supplier(
      name: $checkedConvert('name', (v) => v as String),
      isActive: $checkedConvert('isActive', (v) => v as bool),
      id: $checkedConvert('id', (v) => v as String?),
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

Map<String, dynamic> _$SupplierToJson(Supplier instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cnpj': instance.cnpj,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address?.toJson(),
  'isActive': instance.isActive,
  'createdAt': instance.createdAt?.toJson(),
  'updatedAt': instance.updatedAt?.toJson(),
};

const _$SupplierJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID. Opcional no corpo; obrigatório na resposta.',
    },
    'name': {'type': 'string', 'description': 'Nome ou razão social.'},
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
    'isActive': {'type': 'boolean', 'description': 'Se o cadastro está ativo.'},
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
