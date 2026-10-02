import 'package:base_objects/base_objects.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

/// Usuário público. Sem `passwordHash` (`API.md` §2.1 e §6).
@JsonSerializable()
final class User extends DefaultObject {
  /// Cria o usuário.
  new({
    required this.name,
    required this.email,
    required this.isActive,
    required this.isSuperadmin,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.phone,
    this.lastLoginAt,
  });

  /// Lê o objeto `User`.
  ///
  /// `createdAt` e `updatedAt` saem como [ApiInstant]. A leitura aceita esse
  /// mapa e também o ISO solto que o construtor de [DefaultObject] grava.
  factory fromJson(Map<String, dynamic> json) => _$UserFromJson(_flattenInstants(json));

  /// Esquema JSON gerado para o usuário.
  static const schema = _$UserJsonSchema;

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

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    bool? isActive,
    bool? isSuperadmin,
    ApiInstant? lastLoginAt,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      isActive: isActive ?? this.isActive,
      isSuperadmin: isSuperadmin ?? this.isSuperadmin,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      createdAt: createdAt.value,
      updatedAt: updatedAt.value,
    );
  }

  /// Serializa o usuário.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

Map<String, dynamic> _flattenInstants(Map<String, dynamic> json) {
  final copy = Map<String, dynamic>.from(json);
  for (final key in const ['createdAt', 'updatedAt']) {
    final value = copy[key];
    if (value is Map<Object?, Object?>) {
      final raw = value['value'];
      if (raw is String) {
        copy[key] = raw;
      }
    }
  }
  return copy;
}
