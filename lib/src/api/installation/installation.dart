import 'package:base_objects/src/api/installation/system_user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installation.g.dart';

/// Corpo de `POST /installation`.
///
/// A resposta é [SystemModel]: o mesmo responsável, sem senha e sem a chave.
@JsonSerializable()
final class InstallationRequest {
  /// Cria o corpo.
  const new({
    required this.systemUser,
    required this.activationKey,
    required this.administratorPassword,
    required this.serverUrl,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$InstallationRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
  static const schema = _$InstallationRequestJsonSchema;

  /// Responsável que vira o superadmin. Sem senha.
  final SystemUserModel systemUser;

  /// Chave comparada com `INSTALLATION_KEY`. Não volta na resposta.
  final String activationKey;

  /// Senha inicial em texto. Não volta na resposta.
  final String administratorPassword;

  /// URL base da API que esta instalação usa.
  final String serverUrl;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$InstallationRequestToJson(this);
}

/// Resposta de `GET /installation/status`.
@JsonSerializable()
final class InstallationStatus {
  /// Cria o status.
  const new({required this.installed});

  /// Lê o status.
  factory fromJson(Map<String, dynamic> json) => _$InstallationStatusFromJson(json);

  /// Esquema JSON gerado para o status.
  static const schema = _$InstallationStatusJsonSchema;

  /// Se já existe o único responsável da instalação.
  final bool installed;

  /// Serializa o status.
  Map<String, dynamic> toJson() => _$InstallationStatusToJson(this);
}
