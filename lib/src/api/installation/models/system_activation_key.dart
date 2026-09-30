import 'package:base_objects/src/models/default/default_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_activation_key.g.dart';

/// Chave de ativação da instalação do sistema (domínio).
///
/// {@category modelos}
/// {@subCategory Sistema}
@JsonSerializable()
class SystemActivationKeyModel extends DefaultObject {
  /// Cria a chave de ativação.
  new({required this.activationKey, super.id, super.createdAt, super.updatedAt});
  factory fromJson(Map<String, dynamic> json) => _$SystemActivationKeyModelFromJson(json);

  static Map<String, Object> get schema => _$SystemActivationKeyModelJsonSchema;

  /// Chave de ativação.
  final String activationKey;
  Map<String, dynamic> toJson() => _$SystemActivationKeyModelToJson(this);
}
