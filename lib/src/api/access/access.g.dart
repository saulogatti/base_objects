// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActiveFlagRequest _$ActiveFlagRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ActiveFlagRequest', json, ($checkedConvert) {
      final val = ActiveFlagRequest(
        isActive: $checkedConvert('isActive', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$ActiveFlagRequestToJson(ActiveFlagRequest instance) =>
    <String, dynamic>{'isActive': instance.isActive};

const _$ActiveFlagRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'isActive': {'type': 'boolean', 'description': 'Novo estado.'},
  },
  'required': ['isActive'],
};

AssignRoleRequest _$AssignRoleRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AssignRoleRequest', json, ($checkedConvert) {
      final val = AssignRoleRequest(
        roleCode: $checkedConvert('roleCode', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AssignRoleRequestToJson(AssignRoleRequest instance) =>
    <String, dynamic>{'roleCode': instance.roleCode};

const _$AssignRoleRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'roleCode': {
      'type': 'string',
      'description': 'Código do papel, por exemplo `technician`.',
    },
  },
  'required': ['roleCode'],
};

ChangePasswordRequest _$ChangePasswordRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChangePasswordRequest', json, ($checkedConvert) {
  final val = ChangePasswordRequest(
    newPassword: $checkedConvert('newPassword', (v) => v as String),
    currentPassword: $checkedConvert('currentPassword', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ChangePasswordRequestToJson(
  ChangePasswordRequest instance,
) => <String, dynamic>{
  'currentPassword': instance.currentPassword,
  'newPassword': instance.newPassword,
};

const _$ChangePasswordRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'currentPassword': {
      'type': 'string',
      'description': 'Senha atual. Obrigatória quando o próprio usuário troca.',
    },
    'newPassword': {'type': 'string', 'description': 'Senha nova.'},
  },
  'required': ['newPassword'],
};

Permission _$PermissionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Permission', json, ($checkedConvert) {
      final val = Permission(
        code: $checkedConvert('code', (v) => v as String),
        resource: $checkedConvert('resource', (v) => v as String),
        action: $checkedConvert('action', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$PermissionToJson(Permission instance) =>
    <String, dynamic>{
      'code': instance.code,
      'resource': instance.resource,
      'action': instance.action,
      'description': instance.description,
    };

const _$PermissionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'code': {'type': 'string', 'description': 'Código `recurso:ação`.'},
    'resource': {'type': 'string', 'description': 'Recurso.'},
    'action': {'type': 'string', 'description': 'Ação.'},
    'description': {'type': 'string', 'description': 'Descrição em português.'},
  },
  'required': ['code', 'resource', 'action', 'description'],
};

PermissionOverrideRequest _$PermissionOverrideRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PermissionOverrideRequest', json, ($checkedConvert) {
  final val = PermissionOverrideRequest(
    granted: $checkedConvert('granted', (v) => v as bool),
  );
  return val;
});

Map<String, dynamic> _$PermissionOverrideRequestToJson(
  PermissionOverrideRequest instance,
) => <String, dynamic>{'granted': instance.granted};

const _$PermissionOverrideRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'granted': {
      'type': 'boolean',
      'description':
          'Se a exceção concede (`true`) ou revoga (`false`) a permissão.',
    },
  },
  'required': ['granted'],
};

Role _$RoleFromJson(Map<String, dynamic> json) =>
    $checkedCreate('Role', json, ($checkedConvert) {
      final val = Role(
        id: $checkedConvert('id', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        isSystem: $checkedConvert('isSystem', (v) => v as bool),
        permissions: $checkedConvert(
          'permissions',
          (v) => (v as List<dynamic>).map((e) => e as String).toList(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        description: $checkedConvert('description', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$RoleToJson(Role instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'description': instance.description,
  'isSystem': instance.isSystem,
  'permissions': instance.permissions,
  'createdAt': instance.createdAt.toJson(),
};

const _$RoleJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'code': {'type': 'string', 'description': 'Código estável.'},
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'description': {'type': 'string', 'description': 'Texto livre, ou `null`.'},
    'isSystem': {'type': 'boolean', 'description': 'Se o papel veio do seed.'},
    'permissions': {
      'type': 'array',
      'items': {'type': 'string'},
      'description': 'Permissões do papel.',
    },
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
  },
  'required': ['id', 'code', 'name', 'isSystem', 'permissions', 'createdAt'],
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
