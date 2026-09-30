import 'package:base_objects/src/api/core/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

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

  static const schema = _$UserJsonSchema;

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
