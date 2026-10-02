import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/installation/system_user_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_model.g.dart';

/// Instalação já aceita (`POST /installation` 201).
///
/// Não carrega [InstallationRequest.activationKey] nem
/// [InstallationRequest.administratorPassword]: segredo não volta para o cliente.
@JsonSerializable()
class SystemModel {
  /// Cria a instalação aceita.
  const new({
    required this.id,
    required this.systemUser,
    required this.serverUrl,
    required this.createdAt,
    required this.updatedAt,
  });

  /// Lê a instalação aceita.
  factory fromJson(Map<String, dynamic> json) => _$SystemModelFromJson(json);

  /// Esquema JSON gerado para a instalação aceita.
  static const schema = _$SystemModelJsonSchema;

  /// UUID do registro de instalação.
  final String id;

  /// Responsável, sem senha.
  final SystemUserModel systemUser;

  /// URL base da API que o cliente usa.
  final String serverUrl;

  /// Criação do registro.
  final ApiInstant createdAt;

  /// Última alteração do registro.
  final ApiInstant updatedAt;

  /// Serializa a instalação aceita.
  Map<String, dynamic> toJson() => _$SystemModelToJson(this);
}
