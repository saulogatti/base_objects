import 'package:base_objects/src/api/auth/user_session.dart';
import 'package:base_objects/src/api/core/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

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

  static const schema = _$AuthSessionJsonSchema;

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

/// Corpo de `POST /auth/login` (`API.md` §2.1).
@JsonSerializable()
final class LoginRequest {
  /// Cria o login.
  const new({required this.email, required this.password, this.storeId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  static const schema = _$LoginRequestJsonSchema;

  /// E-mail do usuário.
  final String email;

  /// Senha em texto. Não volta nas respostas.
  final String password;

  /// Loja preferida. `null` ativa a primeira com vínculo.
  final String? storeId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}

/// Resposta genérica do pedido de código. O código não volta no corpo.
@JsonSerializable()
final class PasswordRecoveryAccepted {
  /// Cria a resposta.
  const new({required this.message});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$PasswordRecoveryAcceptedFromJson(json);

  /// Texto genérico, exista ou não o e-mail.
  final String message;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$PasswordRecoveryAcceptedToJson(this);
}

/// Corpo de `POST /auth/password-recovery/request`.
@JsonSerializable()
final class PasswordRecoveryRequest {
  /// Cria o pedido.
  const new({required this.email});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$PasswordRecoveryRequestFromJson(json);

  /// E-mail informado.
  final String email;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$PasswordRecoveryRequestToJson(this);
}

/// Corpo com `refreshToken` (`POST /auth/refresh` e `POST /auth/logout`).
@JsonSerializable()
final class RefreshTokenRequest {
  /// Cria o corpo.
  const new({required this.refreshToken});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$RefreshTokenRequestFromJson(json);

  static const schema = _$RefreshTokenRequestJsonSchema;

  /// Refresh token opaco.
  final String refreshToken;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RefreshTokenRequestToJson(this);
}

/// Corpo de `POST /auth/password-recovery/reset`.
@JsonSerializable()
final class ResetPasswordRequest {
  /// Cria a troca.
  const new({required this.email, required this.code, required this.newPassword});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ResetPasswordRequestFromJson(json);

  /// E-mail do pedido.
  final String email;

  /// Código de 6 dígitos.
  final String code;

  /// Senha nova em texto.
  final String newPassword;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ResetPasswordRequestToJson(this);
}

/// Resposta `{ session }` de `GET /auth/session` e `POST /auth/switch-store`.
@JsonSerializable()
final class SessionResponse {
  /// Cria a resposta.
  const new({required this.session});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$SessionResponseFromJson(json);

  static const schema = _$SessionResponseJsonSchema;

  /// Sessão corrente.
  final UserSession session;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$SessionResponseToJson(this);
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

  static const schema = _$SessionRoleJsonSchema;

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

  static const schema = _$StoreMembershipJsonSchema;

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

/// Corpo de `POST /auth/switch-store`.
@JsonSerializable()
final class SwitchStoreRequest {
  /// Cria o corpo.
  const new({required this.storeId});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$SwitchStoreRequestFromJson(json);

  static const schema = _$SwitchStoreRequestJsonSchema;

  /// Loja que passa a ser a ativa.
  final String storeId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$SwitchStoreRequestToJson(this);
}
