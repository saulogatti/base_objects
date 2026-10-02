import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/utils/entity_id.dart';

/// Objeto base para entidades de domínio com identificador e datas de controle.
///
/// {@category modelos}
/// {@subCategory Cadastros}
///
/// Quando não informado, o [id] é gerado no aplicativo — não um inteiro atribuído pelo
/// banco. A diferença importa quando os dados são compartilhados entre lojas: duas unidades gravando ao mesmo tempo não colidem, e uma operação reenviada após falha de rede é reconhecida como repetida em vez de virar registro duplicado.
abstract class DefaultObject {
  /// Cria a entidade, gerando o [id] quando não informado.
  new({String? id, DateTime? createdAt, DateTime? updatedAt})
    : id = id ?? EntityId.generate(),
      createdAt = createdAt == null
          ? ApiInstant(value: DateTime.now().toUtc())
          : ApiInstant(value: createdAt),
      updatedAt = updatedAt == null
          ? ApiInstant(value: DateTime.now().toUtc())
          : ApiInstant(value: updatedAt);

  /// Identificador único da entidade (UUID v7).
  final String id;

  /// Momento em que o registro foi criado.
  final ApiInstant createdAt;

  /// Momento da última atualização do registro.
  final ApiInstant updatedAt;
}
