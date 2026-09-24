import 'package:base_objects/src/models/default/people_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_user_model.g.dart';

/// Dados do usuário do sistema, incluindo chave e descrição.
///
/// {@category modelos}
/// {@subCategory Sistema}
@JsonSerializable()
class SystemUserModel extends PersonDefault {
  new({
    required super.name,
    required super.email,

    this.description,
    super.phone,
    super.id,
    super.createdAt,
    super.updatedAt,
  });
  factory fromJson(Map<String, dynamic> json) => _$SystemUserModelFromJson(json);

  static Map<String, Object> get schema => _$SystemUserModelJsonSchema;
  final String? description;
  @override
  String get email => super.email!;
  Map<String, dynamic> toJson() => _$SystemUserModelToJson(this);
}
