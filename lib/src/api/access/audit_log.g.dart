// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'audit_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuditEntry _$AuditEntryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AuditEntry', json, ($checkedConvert) {
      final val = AuditEntry(
        id: $checkedConvert('id', (v) => (v as num).toInt()),
        actorName: $checkedConvert('actorName', (v) => v as String),
        action: $checkedConvert(
          'action',
          (v) => $enumDecode(_$AuditActionEnumMap, v),
        ),
        entity: $checkedConvert('entity', (v) => v as String),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        storeId: $checkedConvert('storeId', (v) => v as String?),
        actorId: $checkedConvert('actorId', (v) => v as String?),
        entityId: $checkedConvert('entityId', (v) => v as String?),
        summary: $checkedConvert('summary', (v) => v as String?),
        beforeData: $checkedConvert('beforeData', (v) => readJsonObject(v)),
        afterData: $checkedConvert('afterData', (v) => readJsonObject(v)),
        ip: $checkedConvert('ip', (v) => v as String?),
        userAgent: $checkedConvert('userAgent', (v) => v as String?),
        requestId: $checkedConvert('requestId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$AuditEntryToJson(AuditEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'actorId': instance.actorId,
      'actorName': instance.actorName,
      'action': _$AuditActionEnumMap[instance.action]!,
      'entity': instance.entity,
      'entityId': instance.entityId,
      'summary': instance.summary,
      'beforeData': writeJsonObject(instance.beforeData),
      'afterData': writeJsonObject(instance.afterData),
      'ip': instance.ip,
      'userAgent': instance.userAgent,
      'requestId': instance.requestId,
      'createdAt': instance.createdAt.toJson(),
    };

const _$AuditEntryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'integer', 'description': '`bigserial`.'},
    'storeId': {'type': 'string', 'description': 'Loja. `null` no log global.'},
    'actorId': {
      'type': 'string',
      'description': 'Autor. `null` se o cadastro foi removido.',
    },
    'actorName': {'type': 'string', 'description': 'Nome no momento da ação.'},
    'action': {'type': 'object', 'description': 'Ação.'},
    'entity': {'type': 'string', 'description': 'Entidade afetada.'},
    'entityId': {
      'type': 'string',
      'description': 'Id da entidade. `null` em ações globais.',
    },
    'summary': {
      'type': 'string',
      'description': 'Resumo em português, ou `null`.',
    },
    'beforeData': {
      'type': 'object',
      'additionalProperties': {'type': 'object'},
      'description': 'Estado anterior, ou `null`.',
    },
    'afterData': {
      'type': 'object',
      'additionalProperties': {'type': 'object'},
      'description': 'Estado posterior, ou `null`.',
    },
    'ip': {'type': 'string', 'description': 'IP de origem, ou `null`.'},
    'userAgent': {'type': 'string', 'description': 'User-Agent, ou `null`.'},
    'requestId': {
      'type': 'string',
      'description': 'Correlação da requisição, ou `null`.',
    },
    'createdAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Momento da ação.',
    },
  },
  'required': ['id', 'actorName', 'action', 'entity', 'createdAt'],
  r'$defs': {
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};

const _$AuditActionEnumMap = {
  AuditAction.create: 'create',
  AuditAction.update: 'update',
  AuditAction.delete: 'delete',
  AuditAction.login: 'login',
  AuditAction.loginFailed: 'login_failed',
  AuditAction.cancel: 'cancel',
  AuditAction.approve: 'approve',
  AuditAction.stockAdjust: 'stock_adjust',
  AuditAction.permissionChange: 'permission_change',
  AuditAction.cashOpen: 'cash_open',
  AuditAction.cashClose: 'cash_close',
  AuditAction.priceChange: 'price_change',
};
