import 'package:base_objects/src/api/core/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_user_model.g.dart';

/// Responsável da instalação, sem senha.
///
/// O mesmo objeto vai no pedido e na resposta. A senha fica só em
/// [InstallationRequest.administratorPassword]. O documento é a string de
/// dígitos, no mesmo formato de [Customer.cpf].
@JsonSerializable()
class SystemUserModel {
  /// Cria o responsável.
  const new({
    required this.name,
    required this.email,
    required this.document,
    this.id,
    this.phone,
    this.description,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o responsável.
  factory fromJson(Map<String, dynamic> json) => _$SystemUserModelFromJson(json);

  /// Esquema JSON gerado para o responsável.
  static const schema = _$SystemUserModelJsonSchema;

  /// UUID, ou `null` no pedido.
  final String? id;

  /// Nome.
  final String name;

  /// E-mail.
  final String email;

  /// CPF só com dígitos.
  final String document;

  /// Telefone, ou `null`.
  final String? phone;

  /// Descrição da rede, ou `null`.
  final String? description;

  /// Criação, ou `null` no pedido.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no pedido.
  final ApiInstant? updatedAt;

  /// Serializa o responsável.
  Map<String, dynamic> toJson() => _$SystemUserModelToJson(this);
}
