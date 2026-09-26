import 'package:base_objects/src/api/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'access.g.dart';

/// Corpo de `PUT /users/{id}`. `password` só na criação.
@JsonSerializable()
final class UserUpsertRequest {
  /// Cria o corpo.
  const new({required this.name, required this.email, this.phone, this.password});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$UserUpsertRequestFromJson(json);

  /// Nome.
  final String name;

  /// E-mail único.
  final String email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Senha em texto na criação. Na edição o servidor recusa o campo.
  final String? password;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$UserUpsertRequestToJson(this);
}

/// Corpo `{ isActive }` de `PATCH .../active`.
@JsonSerializable()
final class ActiveFlagRequest {
  /// Cria o corpo.
  const new({required this.isActive});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$ActiveFlagRequestFromJson(json);

  /// Novo estado.
  final bool isActive;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ActiveFlagRequestToJson(this);
}

/// Corpo de `PUT /users/{id}/password`.
@JsonSerializable()
final class ChangePasswordRequest {
  /// Cria o corpo.
  const new({required this.newPassword, this.currentPassword});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRequestFromJson(json);

  /// Senha atual. Obrigatória quando o próprio usuário troca.
  final String? currentPassword;

  /// Senha nova.
  final String newPassword;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ChangePasswordRequestToJson(this);
}

/// Papel do catálogo `GET /roles`, com `createdAt` (`API.md` §6.2).
@JsonSerializable()
final class Role {
  /// Cria o papel.
  const new({
    required this.id,
    required this.code,
    required this.name,
    required this.isSystem,
    required this.permissions,
    required this.createdAt,
    this.description,
  });

  /// Lê o papel.
  factory fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);

  /// UUID.
  final String id;

  /// Código estável.
  final String code;

  /// Nome de exibição.
  final String name;

  /// Texto livre, ou `null`.
  final String? description;

  /// Se o papel veio do seed.
  final bool isSystem;

  /// Permissões do papel.
  final List<String> permissions;

  /// Criação.
  final ApiInstant createdAt;

  /// Serializa o papel.
  Map<String, dynamic> toJson() => _$RoleToJson(this);
}

/// Item de `GET /permissions`.
@JsonSerializable()
final class Permission {
  /// Cria a permissão.
  const new({
    required this.code,
    required this.resource,
    required this.action,
    required this.description,
  });

  /// Lê a permissão.
  factory fromJson(Map<String, dynamic> json) => _$PermissionFromJson(json);

  /// Código `recurso:ação`.
  final String code;

  /// Recurso.
  final String resource;

  /// Ação.
  final String action;

  /// Descrição em português.
  final String description;

  /// Serializa a permissão.
  Map<String, dynamic> toJson() => _$PermissionToJson(this);
}

/// Corpo de `PUT .../membership`.
@JsonSerializable()
final class AssignRoleRequest {
  /// Cria o corpo.
  const new({required this.roleCode});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$AssignRoleRequestFromJson(json);

  /// Código do papel, por exemplo `technician`.
  final String roleCode;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$AssignRoleRequestToJson(this);
}

/// Corpo de `PUT .../overrides/{permissionCode}`.
@JsonSerializable()
final class PermissionOverrideRequest {
  /// Cria o corpo.
  const new({required this.granted});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$PermissionOverrideRequestFromJson(json);

  /// Se a exceção concede (`true`) ou revoga (`false`) a permissão.
  final bool granted;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$PermissionOverrideRequestToJson(this);
}
