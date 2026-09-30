import 'package:base_objects/src/api/installation/system_activation_key.dart';
import 'package:base_objects/src/api/installation/system_user_model.dart';
import 'package:base_objects/src/models/default/default_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'system_model.g.dart';

/// Dados da instalação do sistema (domínio).
///
/// {@category modelos}
/// {@subCategory Sistema}
///
/// Reúne o que a tela de instalação coleta: o responsável pela instalação
/// ([systemUser]), a chave de ativação ([activationKey]) e o endereço do
/// servidor da API ([serverUrl]).
///
/// O responsável **é** o primeiro usuário: nome, e-mail e telefone de
/// [systemUser] é o usuário proprietário.
///
/// Veja também:
/// - [SystemUserModel] — dados do responsável
/// - [SystemActivationKeyModel] — chave de ativação
///
@JsonSerializable()
class SystemModel extends DefaultObject {
  /// Cria os dados da instalação.
  new({
    required this.systemUser,
    required this.activationKey,
    required this.serverUrl,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Lê os dados da instalação.
  factory fromJson(Map<String, dynamic> json) => _$SystemModelFromJson(json);

  /// Esquema JSON gerado para os dados da instalação.
  static Map<String, Object> get schema => _$SystemModelJsonSchema;

  /// Responsável pela instalação, que vira o usuário proprietário.
  final SystemUserModel systemUser;

  /// Chave de ativação da instalação.
  final SystemActivationKeyModel activationKey;

  /// URL base do servidor da API que esta instalação usa (ex.:
  /// `https://api.minhaloja.com.br`).
  final String serverUrl;

  /// Cria uma cópia com os campos informados alterados.
  SystemModel copyWith({
    SystemUserModel? systemUser,
    SystemActivationKeyModel? activationKey,
    String? serverUrl,
  }) => SystemModel(
    id: id,
    createdAt: createdAt,
    updatedAt: updatedAt,
    systemUser: systemUser ?? this.systemUser,
    activationKey: activationKey ?? this.activationKey,
    serverUrl: serverUrl ?? this.serverUrl,
  );

  /// Serializa os dados da instalação.
  Map<String, dynamic> toJson() => _$SystemModelToJson(this);
}
