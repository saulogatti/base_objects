import 'package:json_annotation/json_annotation.dart';

part 'user_upsert_request.g.dart';

/// Corpo de `PUT /users/{id}`. `password` só na criação.
@JsonSerializable()
final class UserUpsertRequest {
  /// Cria o corpo.
  const new({required this.name, required this.email, this.phone, this.password});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$UserUpsertRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
  static Map<String, Object> get jsonSchema => _$UserUpsertRequestJsonSchema;

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
