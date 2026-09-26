import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/store.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

/// Corpo de `POST /auth/login` (`API.md` §2.1).
@JsonSerializable()
final class LoginRequest {
  /// Cria o login.
  const new({required this.email, required this.password, this.storeId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  /// E-mail do usuário.
  final String email;

  /// Senha em texto. Não volta nas respostas.
  final String password;

  /// Loja preferida. `null` ativa a primeira com vínculo.
  final String? storeId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

/// Corpo com `refreshToken` (`POST /auth/refresh` e `POST /auth/logout`).
@JsonSerializable()
final class RefreshTokenRequest {
  /// Cria o corpo.
  const new({required this.refreshToken});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);

  /// Refresh token opaco.
  final String refreshToken;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}

/// Corpo de `POST /auth/switch-store`.
@JsonSerializable()
final class SwitchStoreRequest {
  /// Cria o corpo.
  const new({required this.storeId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$SwitchStoreRequestFromJson(json);

  /// Loja que passa a ser a ativa.
  final String storeId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$SwitchStoreRequestToJson(this);
}

/// Usuário público. Sem `passwordHash` (`API.md` §2.1 e §6).
@JsonSerializable()
final class User {
  /// Cria o usuário.
  const new({
    required this.id,
    required this.name,
    required this.email,
    required this.isActive,
    required this.isSuperadmin,
    required this.createdAt,
    required this.updatedAt,
    this.phone,
    this.lastLoginAt,
  });

  /// Lê o objeto `User`.
  factory fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// UUID.
  final String id;

  /// Nome de exibição.
  final String name;

  /// E-mail único.
  final String email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Se a conta pode entrar.
  final bool isActive;

  /// Se a conta é a de manutenção.
  final bool isSuperadmin;

  /// Último login, ou `null`.
  final ApiInstant? lastLoginAt;

  /// Criação.
  final ApiInstant createdAt;

  /// Última alteração.
  final ApiInstant updatedAt;

  /// Serializa o usuário.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

/// Papel dentro de `membership` (`API.md` §2.1). Sem `createdAt`.
@JsonSerializable()
final class SessionRole {
  /// Cria o papel da sessão.
  const new({
    required this.id,
    required this.code,
    required this.name,
    required this.isSystem,
    required this.permissions,
    this.description,
  });

  /// Lê o papel.
  factory fromJson(Map<String, dynamic> json) => _$SessionRoleFromJson(json);

  /// UUID.
  final String id;

  /// Código estável, por exemplo `manager`.
  final String code;

  /// Nome de exibição.
  final String name;

  /// Texto livre, ou `null`.
  final String? description;

  /// Se o papel veio do seed.
  final bool isSystem;

  /// Permissões do papel, não as efetivas.
  final List<String> permissions;

  /// Serializa o papel.
  Map<String, dynamic> toJson() => _$SessionRoleToJson(this);
}

/// Vínculo do usuário com a loja ativa. `permissions` já é o conjunto efetivo.
@JsonSerializable()
final class StoreMembership {
  /// Cria o vínculo.
  const new({
    required this.userId,
    required this.storeId,
    required this.role,
    required this.permissions,
  });

  /// Lê o vínculo.
  factory fromJson(Map<String, dynamic> json) => _$StoreMembershipFromJson(json);

  /// Usuário.
  final String userId;

  /// Loja.
  final String storeId;

  /// Papel na loja.
  final SessionRole role;

  /// Permissões efetivas (papel ± exceções).
  final List<String> permissions;

  /// Serializa o vínculo.
  Map<String, dynamic> toJson() => _$StoreMembershipToJson(this);
}

/// Objeto `session` (`API.md` §2.1).
@JsonSerializable()
final class UserSession {
  /// Cria a sessão.
  const new({
    required this.user,
    required this.availableStores,
    this.activeStore,
    this.membership,
  });

  /// Lê a sessão.
  factory fromJson(Map<String, dynamic> json) => _$UserSessionFromJson(json);

  /// Usuário autenticado.
  final User user;

  /// Loja ativa. `null` quando o superadmin ainda não cadastrou loja.
  final Store? activeStore;

  /// Lojas com vínculo.
  final List<Store> availableStores;

  /// Vínculo na loja ativa. `null` junto com [activeStore].
  final StoreMembership? membership;

  /// Serializa a sessão.
  Map<String, dynamic> toJson() => _$UserSessionToJson(this);
}

/// Resposta de login e de refresh (`API.md` §2.1 e §2.2).
@JsonSerializable()
final class AuthSession {
  /// Cria a resposta.
  const new({
    required this.accessToken,
    required this.accessTokenExpiresAt,
    required this.refreshToken,
    required this.refreshTokenExpiresAt,
    required this.session,
  });

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$AuthSessionFromJson(json);

  /// JWT de acesso.
  final String accessToken;

  /// Expiração do access token.
  final ApiInstant accessTokenExpiresAt;

  /// Refresh token opaco.
  final String refreshToken;

  /// Expiração do refresh token.
  final ApiInstant refreshTokenExpiresAt;

  /// Sessão recarregada.
  final UserSession session;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$AuthSessionToJson(this);
}

/// Resposta `{ session }` de `GET /auth/session` e `POST /auth/switch-store`.
@JsonSerializable()
final class SessionResponse {
  /// Cria a resposta.
  const new({required this.session});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$SessionResponseFromJson(json);

  /// Sessão corrente.
  final UserSession session;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$SessionResponseToJson(this);
}

/// Corpo de `POST /auth/password-recovery/request`.
@JsonSerializable()
final class PasswordRecoveryRequest {
  /// Cria o pedido.
  const new({required this.email});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$PasswordRecoveryRequestFromJson(json);

  /// E-mail informado.
  final String email;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$PasswordRecoveryRequestToJson(this);
}

/// Resposta genérica do pedido de código. O código não volta no corpo.
@JsonSerializable()
final class PasswordRecoveryAccepted {
  /// Cria a resposta.
  const new({required this.message});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) =>
      _$PasswordRecoveryAcceptedFromJson(json);

  /// Texto genérico, exista ou não o e-mail.
  final String message;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$PasswordRecoveryAcceptedToJson(this);
}

/// Corpo de `POST /auth/password-recovery/validate`.
@JsonSerializable()
final class ValidateRecoveryCodeRequest {
  /// Cria a validação.
  const new({required this.email, required this.code});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$ValidateRecoveryCodeRequestFromJson(json);

  /// E-mail do pedido.
  final String email;

  /// Código de 6 dígitos.
  final String code;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ValidateRecoveryCodeRequestToJson(this);
}

/// Corpo de `POST /auth/password-recovery/reset`.
@JsonSerializable()
final class ResetPasswordRequest {
  /// Cria a troca.
  const new({required this.email, required this.code, required this.newPassword});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$ResetPasswordRequestFromJson(json);

  /// E-mail do pedido.
  final String email;

  /// Código de 6 dígitos.
  final String code;

  /// Senha nova em texto.
  final String newPassword;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}
