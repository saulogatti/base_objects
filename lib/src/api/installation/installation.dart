import 'package:base_objects/src/api/installation/models/system_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'installation.g.dart';

/// Corpo de `POST /installation`. Sem `stores` e sem `cashRegisterName`.
@JsonSerializable()
final class InstallationRequest {
  /// Cria o corpo.
  const new({required this.systemModel, required this.administratorPassword});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$InstallationRequestFromJson(json);

  /// Responsável que vira o superadmin.
  final SystemModel systemModel;

  /// Senha inicial em texto. Não é persistida neste objeto.
  final String administratorPassword;

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

  /// Se já existe o único responsável da instalação.
  final bool installed;

  /// Serializa o status.
  Map<String, dynamic> toJson() => _$InstallationStatusToJson(this);
}
