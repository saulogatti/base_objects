// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, inference_failure_on_collection_literal

part of 'auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('LoginRequest', json, ($checkedConvert) {
      final val = LoginRequest(
        email: $checkedConvert('email', (v) => v as String),
        password: $checkedConvert('password', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) => <String, dynamic>{
  'email': instance.email,
  'password': instance.password,
  'storeId': instance.storeId,
};

const _$LoginRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'email': {'type': 'string', 'description': 'E-mail do usuário.'},
    'password': {'type': 'string', 'description': 'Senha em texto. Não volta nas respostas.'},
    'storeId': {
      'type': 'string',
      'description': 'Loja preferida. `null` ativa a primeira com vínculo.',
    },
  },
  'required': ['email', 'password'],
};

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RefreshTokenRequest', json, ($checkedConvert) {
      final val = RefreshTokenRequest(
        refreshToken: $checkedConvert('refreshToken', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$RefreshTokenRequestToJson(RefreshTokenRequest instance) => <String, dynamic>{
  'refreshToken': instance.refreshToken,
};

const _$RefreshTokenRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'refreshToken': {'type': 'string', 'description': 'Refresh token opaco.'},
  },
  'required': ['refreshToken'],
};

SwitchStoreRequest _$SwitchStoreRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SwitchStoreRequest', json, ($checkedConvert) {
      final val = SwitchStoreRequest(storeId: $checkedConvert('storeId', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$SwitchStoreRequestToJson(SwitchStoreRequest instance) => <String, dynamic>{
  'storeId': instance.storeId,
};

const _$SwitchStoreRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'storeId': {'type': 'string', 'description': 'Loja que passa a ser a ativa.'},
  },
  'required': ['storeId'],
};

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate('User', json, ($checkedConvert) {
  final val = User(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    email: $checkedConvert('email', (v) => v as String),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    isSuperadmin: $checkedConvert('isSuperadmin', (v) => v as bool),
    createdAt: $checkedConvert('createdAt', (v) => ApiInstant.fromJson(v)),
    updatedAt: $checkedConvert('updatedAt', (v) => ApiInstant.fromJson(v)),
    phone: $checkedConvert('phone', (v) => v as String?),
    lastLoginAt: $checkedConvert('lastLoginAt', (v) => v == null ? null : ApiInstant.fromJson(v)),
  );
  return val;
});

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'isActive': instance.isActive,
  'isSuperadmin': instance.isSuperadmin,
  'lastLoginAt': instance.lastLoginAt?.toJson(),
  'createdAt': instance.createdAt.toJson(),
  'updatedAt': instance.updatedAt.toJson(),
};

const _$UserJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'email': {'type': 'string', 'description': 'E-mail único.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
    'isActive': {'type': 'boolean', 'description': 'Se a conta pode entrar.'},
    'isSuperadmin': {'type': 'boolean', 'description': 'Se a conta é a de manutenção.'},
    'lastLoginAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Último login, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
    'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
  },
  'required': ['id', 'name', 'email', 'isActive', 'isSuperadmin', 'createdAt', 'updatedAt'],
  r'$defs': {
    'ApiInstant': {'type': 'object', 'properties': {}},
  },
};

SessionRole _$SessionRoleFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SessionRole', json, ($checkedConvert) {
      final val = SessionRole(
        id: $checkedConvert('id', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        isSystem: $checkedConvert('isSystem', (v) => v as bool),
        permissions: $checkedConvert(
          'permissions',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        description: $checkedConvert('description', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$SessionRoleToJson(SessionRole instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'description': instance.description,
  'isSystem': instance.isSystem,
  'permissions': instance.permissions,
};

const _$SessionRoleJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'code': {'type': 'string', 'description': 'Código estável, por exemplo `manager`.'},
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
    'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
    'permissions': {
      'type': 'array',
      'items': {'type': 'string'},
      'description': 'Permissões do papel, não as efetivas.',
    },
  },
  'required': ['id', 'code', 'name', 'isSystem', 'permissions'],
};

StoreMembership _$StoreMembershipFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StoreMembership', json, ($checkedConvert) {
      final val = StoreMembership(
        userId: $checkedConvert('userId', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        role: $checkedConvert('role', (v) => SessionRole.fromJson(v as Map<String, dynamic>)),
        permissions: $checkedConvert(
          'permissions',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$StoreMembershipToJson(StoreMembership instance) => <String, dynamic>{
  'userId': instance.userId,
  'storeId': instance.storeId,
  'role': instance.role.toJson(),
  'permissions': instance.permissions,
};

const _$StoreMembershipJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'userId': {'type': 'string', 'description': 'Usuário.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'role': {r'$ref': r'#/$defs/SessionRole', 'description': 'Papel na loja.'},
    'permissions': {
      'type': 'array',
      'items': {'type': 'string'},
      'description': 'Permissões efetivas (papel ± exceções).',
    },
  },
  'required': ['userId', 'storeId', 'role', 'permissions'],
  r'$defs': {
    'SessionRole': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'code': {'type': 'string', 'description': 'Código estável, por exemplo `manager`.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
        'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
        'permissions': {
          'type': 'array',
          'items': {'type': 'string'},
          'description': 'Permissões do papel, não as efetivas.',
        },
      },
      'required': ['id', 'code', 'name', 'isSystem', 'permissions'],
    },
  },
};

UserSession _$UserSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('UserSession', json, ($checkedConvert) {
      final val = UserSession(
        user: $checkedConvert('user', (v) => User.fromJson(v as Map<String, dynamic>)),
        availableStores: $checkedConvert(
          'availableStores',
          (v) =>
              (v as List<dynamic>).map((e) => Store.fromJson(e as Map<String, dynamic>)).toList(),
        ),
        activeStore: $checkedConvert(
          'activeStore',
          (v) => v == null ? null : Store.fromJson(v as Map<String, dynamic>),
        ),
        membership: $checkedConvert(
          'membership',
          (v) => v == null ? null : StoreMembership.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$UserSessionToJson(UserSession instance) => <String, dynamic>{
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
      'description': 'Loja ativa. `null` quando o superadmin ainda não cadastrou loja.',
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
    'ApiInstant': {'type': 'object', 'properties': {}},
    'User': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'email': {'type': 'string', 'description': 'E-mail único.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a conta pode entrar.'},
        'isSuperadmin': {'type': 'boolean', 'description': 'Se a conta é a de manutenção.'},
        'lastLoginAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Último login, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
      },
      'required': ['id', 'name', 'email', 'isActive', 'isSuperadmin', 'createdAt', 'updatedAt'],
    },
    'Address': {
      'type': 'object',
      'properties': {
        'street': {'type': 'string', 'description': 'Logradouro.'},
        'zipCode': {'type': 'string', 'description': 'CEP, com ou sem máscara.'},
        'neighborhood': {'type': 'string', 'description': 'Bairro.'},
        'city': {'type': 'string', 'description': 'Cidade.'},
        'state': {'type': 'string', 'description': 'UF de duas letras.'},
      },
    },
    'Store': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional na criação.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'legalName': {'type': 'string', 'description': 'Razão social, ou `null`.'},
        'cnpj': {'type': 'string', 'description': 'CNPJ só com dígitos, ou `null`.'},
        'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'address': {r'$ref': r'#/$defs/Address', 'description': 'Endereço, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a unidade está em operação.'},
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
        'code': {'type': 'string', 'description': 'Código estável, por exemplo `manager`.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
        'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
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
        'role': {r'$ref': r'#/$defs/SessionRole', 'description': 'Papel na loja.'},
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

AuthSession _$AuthSessionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AuthSession', json, ($checkedConvert) {
  final val = AuthSession(
    accessToken: $checkedConvert('accessToken', (v) => v as String),
    accessTokenExpiresAt: $checkedConvert('accessTokenExpiresAt', (v) => ApiInstant.fromJson(v)),
    refreshToken: $checkedConvert('refreshToken', (v) => v as String),
    refreshTokenExpiresAt: $checkedConvert('refreshTokenExpiresAt', (v) => ApiInstant.fromJson(v)),
    session: $checkedConvert('session', (v) => UserSession.fromJson(v as Map<String, dynamic>)),
  );
  return val;
});

Map<String, dynamic> _$AuthSessionToJson(AuthSession instance) => <String, dynamic>{
  'accessToken': instance.accessToken,
  'accessTokenExpiresAt': instance.accessTokenExpiresAt.toJson(),
  'refreshToken': instance.refreshToken,
  'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toJson(),
  'session': instance.session.toJson(),
};

const _$AuthSessionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'accessToken': {'type': 'string', 'description': 'JWT de acesso.'},
    'accessTokenExpiresAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Expiração do access token.',
    },
    'refreshToken': {'type': 'string', 'description': 'Refresh token opaco.'},
    'refreshTokenExpiresAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Expiração do refresh token.',
    },
    'session': {r'$ref': r'#/$defs/UserSession', 'description': 'Sessão recarregada.'},
  },
  'required': [
    'accessToken',
    'accessTokenExpiresAt',
    'refreshToken',
    'refreshTokenExpiresAt',
    'session',
  ],
  r'$defs': {
    'ApiInstant': {'type': 'object', 'properties': {}},
    'User': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'email': {'type': 'string', 'description': 'E-mail único.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a conta pode entrar.'},
        'isSuperadmin': {'type': 'boolean', 'description': 'Se a conta é a de manutenção.'},
        'lastLoginAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Último login, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
      },
      'required': ['id', 'name', 'email', 'isActive', 'isSuperadmin', 'createdAt', 'updatedAt'],
    },
    'Address': {
      'type': 'object',
      'properties': {
        'street': {'type': 'string', 'description': 'Logradouro.'},
        'zipCode': {'type': 'string', 'description': 'CEP, com ou sem máscara.'},
        'neighborhood': {'type': 'string', 'description': 'Bairro.'},
        'city': {'type': 'string', 'description': 'Cidade.'},
        'state': {'type': 'string', 'description': 'UF de duas letras.'},
      },
    },
    'Store': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional na criação.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'legalName': {'type': 'string', 'description': 'Razão social, ou `null`.'},
        'cnpj': {'type': 'string', 'description': 'CNPJ só com dígitos, ou `null`.'},
        'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'address': {r'$ref': r'#/$defs/Address', 'description': 'Endereço, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a unidade está em operação.'},
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
        'code': {'type': 'string', 'description': 'Código estável, por exemplo `manager`.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
        'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
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
        'role': {r'$ref': r'#/$defs/SessionRole', 'description': 'Papel na loja.'},
        'permissions': {
          'type': 'array',
          'items': {'type': 'string'},
          'description': 'Permissões efetivas (papel ± exceções).',
        },
      },
      'required': ['userId', 'storeId', 'role', 'permissions'],
    },
    'UserSession': {
      'type': 'object',
      'properties': {
        'user': {r'$ref': r'#/$defs/User', 'description': 'Usuário autenticado.'},
        'activeStore': {
          r'$ref': r'#/$defs/Store',
          'description': 'Loja ativa. `null` quando o superadmin ainda não cadastrou loja.',
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
    },
  },
};

SessionResponse _$SessionResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('SessionResponse', json, ($checkedConvert) {
      final val = SessionResponse(
        session: $checkedConvert('session', (v) => UserSession.fromJson(v as Map<String, dynamic>)),
      );
      return val;
    });

Map<String, dynamic> _$SessionResponseToJson(SessionResponse instance) => <String, dynamic>{
  'session': instance.session.toJson(),
};

const _$SessionResponseJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'session': {r'$ref': r'#/$defs/UserSession', 'description': 'Sessão corrente.'},
  },
  'required': ['session'],
  r'$defs': {
    'ApiInstant': {'type': 'object', 'properties': {}},
    'User': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'email': {'type': 'string', 'description': 'E-mail único.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a conta pode entrar.'},
        'isSuperadmin': {'type': 'boolean', 'description': 'Se a conta é a de manutenção.'},
        'lastLoginAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Último login, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
      },
      'required': ['id', 'name', 'email', 'isActive', 'isSuperadmin', 'createdAt', 'updatedAt'],
    },
    'Address': {
      'type': 'object',
      'properties': {
        'street': {'type': 'string', 'description': 'Logradouro.'},
        'zipCode': {'type': 'string', 'description': 'CEP, com ou sem máscara.'},
        'neighborhood': {'type': 'string', 'description': 'Bairro.'},
        'city': {'type': 'string', 'description': 'Cidade.'},
        'state': {'type': 'string', 'description': 'UF de duas letras.'},
      },
    },
    'Store': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Opcional na criação.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'legalName': {'type': 'string', 'description': 'Razão social, ou `null`.'},
        'cnpj': {'type': 'string', 'description': 'CNPJ só com dígitos, ou `null`.'},
        'email': {'type': 'string', 'description': 'E-mail, ou `null`.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
        'address': {r'$ref': r'#/$defs/Address', 'description': 'Endereço, ou `null`.'},
        'isActive': {'type': 'boolean', 'description': 'Se a unidade está em operação.'},
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
        'code': {'type': 'string', 'description': 'Código estável, por exemplo `manager`.'},
        'name': {'type': 'string', 'description': 'Nome de exibição.'},
        'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
        'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
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
        'role': {r'$ref': r'#/$defs/SessionRole', 'description': 'Papel na loja.'},
        'permissions': {
          'type': 'array',
          'items': {'type': 'string'},
          'description': 'Permissões efetivas (papel ± exceções).',
        },
      },
      'required': ['userId', 'storeId', 'role', 'permissions'],
    },
    'UserSession': {
      'type': 'object',
      'properties': {
        'user': {r'$ref': r'#/$defs/User', 'description': 'Usuário autenticado.'},
        'activeStore': {
          r'$ref': r'#/$defs/Store',
          'description': 'Loja ativa. `null` quando o superadmin ainda não cadastrou loja.',
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
    },
  },
};

PasswordRecoveryRequest _$PasswordRecoveryRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PasswordRecoveryRequest', json, ($checkedConvert) {
      final val = PasswordRecoveryRequest(email: $checkedConvert('email', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$PasswordRecoveryRequestToJson(PasswordRecoveryRequest instance) =>
    <String, dynamic>{'email': instance.email};

const _$PasswordRecoveryRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'email': {'type': 'string', 'description': 'E-mail informado.'},
  },
  'required': ['email'],
};

PasswordRecoveryAccepted _$PasswordRecoveryAcceptedFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PasswordRecoveryAccepted', json, ($checkedConvert) {
      final val = PasswordRecoveryAccepted(message: $checkedConvert('message', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$PasswordRecoveryAcceptedToJson(PasswordRecoveryAccepted instance) =>
    <String, dynamic>{'message': instance.message};

const _$PasswordRecoveryAcceptedJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'message': {'type': 'string', 'description': 'Texto genérico, exista ou não o e-mail.'},
  },
  'required': ['message'],
};

ValidateRecoveryCodeRequest _$ValidateRecoveryCodeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ValidateRecoveryCodeRequest', json, ($checkedConvert) {
      final val = ValidateRecoveryCodeRequest(
        email: $checkedConvert('email', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ValidateRecoveryCodeRequestToJson(ValidateRecoveryCodeRequest instance) =>
    <String, dynamic>{'email': instance.email, 'code': instance.code};

const _$ValidateRecoveryCodeRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'email': {'type': 'string', 'description': 'E-mail do pedido.'},
    'code': {'type': 'string', 'description': 'Código de 6 dígitos.'},
  },
  'required': ['email', 'code'],
};

ResetPasswordRequest _$ResetPasswordRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ResetPasswordRequest', json, ($checkedConvert) {
      final val = ResetPasswordRequest(
        email: $checkedConvert('email', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
        newPassword: $checkedConvert('newPassword', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ResetPasswordRequestToJson(ResetPasswordRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'code': instance.code,
      'newPassword': instance.newPassword,
    };

const _$ResetPasswordRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'email': {'type': 'string', 'description': 'E-mail do pedido.'},
    'code': {'type': 'string', 'description': 'Código de 6 dígitos.'},
    'newPassword': {'type': 'string', 'description': 'Senha nova em texto.'},
  },
  'required': ['email', 'code', 'newPassword'],
};
