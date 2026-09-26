import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/json_object.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'audit_log.g.dart';

/// Entrada de auditoria (`API.md` §14.3).
///
/// `id` é inteiro (`bigserial`), não UUID. `beforeData` e `afterData` são
/// objetos JSON, não string.
@JsonSerializable()
final class AuditEntry {
  /// Cria a entrada.
  const new({
    required this.id,
    required this.actorName,
    required this.action,
    required this.entity,
    required this.createdAt,
    this.storeId,
    this.actorId,
    this.entityId,
    this.summary,
    this.beforeData,
    this.afterData,
    this.ip,
    this.userAgent,
    this.requestId,
  });

  /// Lê a entrada.
  factory fromJson(Map<String, dynamic> json) => _$AuditEntryFromJson(json);

  /// `bigserial`.
  final int id;

  /// Loja. `null` no log global.
  final String? storeId;

  /// Autor. `null` se o cadastro foi removido.
  final String? actorId;

  /// Nome no momento da ação.
  final String actorName;

  /// Ação.
  final AuditAction action;

  /// Entidade afetada.
  final String entity;

  /// Id da entidade. `null` em ações globais.
  final String? entityId;

  /// Resumo em português, ou `null`.
  final String? summary;

  /// Estado anterior, ou `null`.
  @JsonKey(fromJson: readJsonObject, toJson: writeJsonObject)
  final Map<String, Object?>? beforeData;

  /// Estado posterior, ou `null`.
  @JsonKey(fromJson: readJsonObject, toJson: writeJsonObject)
  final Map<String, Object?>? afterData;

  /// IP de origem, ou `null`.
  final String? ip;

  /// User-Agent, ou `null`.
  final String? userAgent;

  /// Correlação da requisição, ou `null`.
  final String? requestId;

  /// Momento da ação.
  final ApiInstant createdAt;

  /// Serializa a entrada.
  Map<String, dynamic> toJson() => _$AuditEntryToJson(this);
}
