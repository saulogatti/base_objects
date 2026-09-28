import 'package:base_objects/src/models/document/cpf.dart';
import 'package:base_objects/src/models/person/person.dart';
import 'package:json_annotation/json_annotation.dart';

export 'package:base_objects/src/models/document/cpf.dart';

part 'system_user_model.g.dart';

/// Dados do usuário do sistema, incluindo chave e descrição.
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
  });
  factory fromJson(Map<String, dynamic> json) => _$SystemUserModelFromJson(json);

  static Map<String, Object> get schema => _$SystemUserModelJsonSchema;

  /// Descrição do usuário.
  final String? description;

  /// Tipo de usuário.
  @JsonKey(unknownEnumValue: SystemUserType.user)
  final SystemUserType userType;
  final DateTime? lastLoginAt;

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
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );
  Map<String, dynamic> toJson() => _$SystemUserModelToJson(this);
}

@JsonEnum()
enum SystemUserType { superadmin, admin, user }
