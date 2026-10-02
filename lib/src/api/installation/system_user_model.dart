import 'package:base_objects/src/models/document/cpf.dart';
import 'package:base_objects/src/models/person/person.dart';
import 'package:json_annotation/json_annotation.dart';

export 'package:base_objects/src/models/document/cpf.dart';

part 'system_user_model.g.dart';

/// Dados cadastrais do usuário do sistema.
///
/// {@category modelos}
/// {@subCategory Sistema}
@JsonSerializable()
class SystemUserModel extends Person<Cpf> {
  new({
    required super.name,
    required super.document,
    required super.email,
    this.description,
    this.userType = SystemUserType.user,
    super.phone,
    super.id,
    super.createdAt,
    super.updatedAt,
    this.lastLoginAt,
    this.password,
  });

  /// Lê os dados do usuário.
  factory fromJson(Map<String, dynamic> json) => _$SystemUserModelFromJson(json);

  /// Esquema JSON gerado para o usuário.
  static Map<String, Object> get schema => _$SystemUserModelJsonSchema;

  /// Descrição do usuário.
  final String? description;

  /// Tipo de usuário.
  @JsonKey(unknownEnumValue: SystemUserType.user)
  final SystemUserType userType;

  /// Último login, ou `null` se ainda não houve login.
  final DateTime? lastLoginAt;

  /// Senha informada durante a instalação, ou `null`.
  final String? password;

  /// Cria uma cópia com os campos informados alterados.
  SystemUserModel copyWith({
    String? name,
    Cpf? document,
    String? email,
    String? description,
    SystemUserType? userType,
    DateTime? updatedAt,
    String? phone,
    DateTime? lastLoginAt,
  }) => SystemUserModel(
    id: id,
    name: name ?? this.name,
    document: document ?? this.document,
    email: email ?? this.email,
    description: description ?? this.description,
    userType: userType ?? this.userType,
    phone: phone ?? this.phone,
    lastLoginAt: lastLoginAt ?? this.lastLoginAt,
    createdAt: createdAt.value,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  /// Serializa os dados do usuário.
  Map<String, dynamic> toJson() => _$SystemUserModelToJson(this);
}

/// Tipo de conta que pode ser criada durante a instalação.
@JsonEnum()
enum SystemUserType {
  /// Administrador principal da instalação.
  superadmin,

  /// Administrador.
  admin,

  /// Usuário padrão.
  user,
}
