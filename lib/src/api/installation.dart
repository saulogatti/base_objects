import 'package:json_annotation/json_annotation.dart';

part 'installation.g.dart';

/// Resposta de `GET /installation/status`.
@JsonSerializable()
final class InstallationStatus {
  /// Cria o status.
  const new({required this.installed});

  /// Lê o status.
  factory fromJson(Map<String, dynamic> json) =>
      _$InstallationStatusFromJson(json);

  /// Se já existe o único responsável da instalação.
  final bool installed;

  /// Serializa o status.
  Map<String, dynamic> toJson() => _$InstallationStatusToJson(this);
}

/// Responsável da rede, sem senha (`API.md` §4.2 e §4.3).
@JsonSerializable()
final class SystemUserData {
  /// Cria os dados.
  const new({
    required this.name,
    required this.email,
    required this.systemKey,
    this.phone,
    this.description,
  });

  /// Lê o objeto.
  factory fromJson(Map<String, dynamic> json) => _$SystemUserDataFromJson(json);

  /// Nome do responsável.
  final String name;

  /// E-mail do responsável.
  final String email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Chave de validade persistida. Sem checagem de licença nesta etapa.
  final String systemKey;

  /// Descrição da rede, ou `null`.
  final String? description;

  /// Serializa sem senha.
  Map<String, dynamic> toJson() => _$SystemUserDataToJson(this);
}

/// Corpo de `POST /installation`. Sem `stores` e sem `cashRegisterName`.
@JsonSerializable()
final class InstallationRequest {
  /// Cria o corpo.
  const new({required this.systemUserData, required this.administratorPassword});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$InstallationRequestFromJson(json);

  /// Responsável que vira o superadmin.
  final SystemUserData systemUserData;

  /// Senha inicial em texto. Não é persistida neste objeto.
  final String administratorPassword;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$InstallationRequestToJson(this);
}
