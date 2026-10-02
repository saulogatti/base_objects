// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'user_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSession _$UserSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserSession', json, ($checkedConvert) {
      final val = UserSession(
        user: $checkedConvert(
          'user',
          (v) => User.fromJson(v as Map<String, dynamic>),
        ),
        availableStores: $checkedConvert(
          'availableStores',
          (v) => (v as List<dynamic>)
              .map((e) => Store.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        activeStore: $checkedConvert(
          'activeStore',
          (v) => v == null ? null : Store.fromJson(v as Map<String, dynamic>),
        ),
        membership: $checkedConvert(
          'membership',
          (v) => v == null
              ? null
              : StoreMembership.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserSessionToJson(
  UserSession instance,
) => <String, dynamic>{
  'user': instance.user.toJson(),
  'activeStore': instance.activeStore?.toJson(),
  'availableStores': instance.availableStores.map((e) => e.toJson()).toList(),
  'membership': instance.membership?.toJson(),
};

const _$UserSessionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'user': {r'$ref': r'#/$defs/User', 'description': 'Usuário autenticado.'},
    'activeStore': {
      r'$ref': r'#/$defs/Store',
      'description':
          'Loja ativa. `null` quando o superadmin ainda não cadastrou loja.',
    },
    'availableStores': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/Store'},
      'description': 'Lojas com vínculo.',
    },
    'membership': {
      r'$ref': r'#/$defs/StoreMembership',
      'description': 'Vínculo na loja ativa. `null` junto com [activeStore].',
    },
  },
  'required': ['user', 'availableStores'],
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
    'User': {
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
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'email': {'type': 'string', 'description': 'E-mail único.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'isActive': {
          'type': 'boolean',
          'description': 'Se a conta pode entrar.',
        },
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
    },
    'Address': {
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
    },
    'Store': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional na criação.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'legalName': {
          'type': 'string',
          'description': 'Razão social, ou `null`.',
        },
        'cnpj': {
          'type': 'string',
          'description': 'CNPJ só com dígitos, ou `null`.',
        },
        'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'address': {
          r'$ref': r'#/$defs/Address',
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
    },
    'SessionRole': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'code': {
          'type': 'string',
          'description': 'Código estável, por exemplo `manager`.',
        },
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'description': {
          'type': 'string',
          'description': 'Texto livre, ou `null`.',
        },
        'isSystem': {
          'type': 'boolean',
          'description': 'Se o papel veio do seed.',
        },
        'permissions': {
          'type': 'array',
          'items': {'type': 'string'},
          'description': 'Permissões do papel, não as efetivas.',
        },
      },
      'required': ['id', 'code', 'name', 'isSystem', 'permissions'],
    },
    'StoreMembership': {
      'type': 'object',
      'properties': {
        'userId': {'type': 'string', 'description': 'Usuário.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'role': {
          r'$ref': r'#/$defs/SessionRole',
          'description': 'Papel na loja.',
        },
        'permissions': {
          'type': 'array',
          'items': {'type': 'string'},
          'description': 'Permissões efetivas (papel ± exceções).',
        },
      },
      'required': ['userId', 'storeId', 'role', 'permissions'],
    },
  },
};
