// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'service_order_commands.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceOrderStatusChange _$ServiceOrderStatusChangeFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ServiceOrderStatusChange', json, ($checkedConvert) {
      final val = ServiceOrderStatusChange(
        id: $checkedConvert('id', (v) => v as String),
        serviceOrderId: $checkedConvert('serviceOrderId', (v) => v as String),
        toStatus: $checkedConvert('toStatus', (v) => $enumDecode(_$ServiceOrderStatusEnumMap, v)),
        changedAt: $checkedConvert(
          'changedAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        fromStatus: $checkedConvert(
          'fromStatus',
          (v) => $enumDecodeNullable(_$ServiceOrderStatusEnumMap, v),
        ),
        notes: $checkedConvert('notes', (v) => v as String?),
        changedBy: $checkedConvert('changedBy', (v) => v as String?),
        changedByName: $checkedConvert('changedByName', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ServiceOrderStatusChangeToJson(ServiceOrderStatusChange instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceOrderId': instance.serviceOrderId,
      'fromStatus': _$ServiceOrderStatusEnumMap[instance.fromStatus],
      'toStatus': _$ServiceOrderStatusEnumMap[instance.toStatus]!,
      'notes': instance.notes,
      'changedBy': instance.changedBy,
      'changedByName': instance.changedByName,
      'changedAt': instance.changedAt.toJson(),
    };

const _$ServiceOrderStatusChangeJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'serviceOrderId': {'type': 'string', 'description': 'Ordem.'},
    'fromStatus': {'type': 'object', 'description': 'Status anterior. `null` na abertura.'},
    'toStatus': {'type': 'object', 'description': 'Novo status.'},
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'changedBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'changedByName': {'type': 'string', 'description': 'Nome do autor, ou `null`.'},
    'changedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Momento.'},
  },
  'required': ['id', 'serviceOrderId', 'toStatus', 'changedAt'],
  r'$defs': {
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {'type': 'string', 'format': 'date-time', 'description': 'Instante em UTC.'},
      },
      'required': ['value'],
    },
  },
};

const _$ServiceOrderStatusEnumMap = {
  ServiceOrderStatus.received: 'received',
  ServiceOrderStatus.inDiagnosis: 'in_diagnosis',
  ServiceOrderStatus.awaitingApproval: 'awaiting_approval',
  ServiceOrderStatus.approved: 'approved',
  ServiceOrderStatus.rejected: 'rejected',
  ServiceOrderStatus.awaitingParts: 'awaiting_parts',
  ServiceOrderStatus.inRepair: 'in_repair',
  ServiceOrderStatus.ready: 'ready',
  ServiceOrderStatus.delivered: 'delivered',
  ServiceOrderStatus.cancelled: 'cancelled',
  ServiceOrderStatus.returnedUnrepaired: 'returned_unrepaired',
};

ApproveServiceOrderRequest _$ApproveServiceOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApproveServiceOrderRequest', json, ($checkedConvert) {
      final val = ApproveServiceOrderRequest(
        approvedByName: $checkedConvert('approvedByName', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$ApproveServiceOrderRequestToJson(ApproveServiceOrderRequest instance) =>
    <String, dynamic>{'approvedByName': instance.approvedByName};

const _$ApproveServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'approvedByName': {'type': 'string', 'description': 'Nome de quem autorizou.'},
  },
  'required': ['approvedByName'],
};

RejectServiceOrderRequest _$RejectServiceOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RejectServiceOrderRequest', json, ($checkedConvert) {
      final val = RejectServiceOrderRequest(
        rejectionReason: $checkedConvert('rejectionReason', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$RejectServiceOrderRequestToJson(RejectServiceOrderRequest instance) =>
    <String, dynamic>{'rejectionReason': instance.rejectionReason};

const _$RejectServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'rejectionReason': {'type': 'string', 'description': 'Motivo.'},
  },
  'required': ['rejectionReason'],
};

ChangeServiceOrderStatusRequest _$ChangeServiceOrderStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChangeServiceOrderStatusRequest', json, ($checkedConvert) {
  final val = ChangeServiceOrderStatusRequest(
    status: $checkedConvert('status', (v) => $enumDecode(_$ServiceOrderStatusEnumMap, v)),
    notes: $checkedConvert('notes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ChangeServiceOrderStatusRequestToJson(
  ChangeServiceOrderStatusRequest instance,
) => <String, dynamic>{
  'status': _$ServiceOrderStatusEnumMap[instance.status]!,
  'notes': instance.notes,
};

const _$ChangeServiceOrderStatusRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'status': {
      'type': 'object',
      'description': 'Novo status. `delivered` e `cancelled` têm rota própria.',
    },
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
  },
  'required': ['status'],
};

AssignTechnicianRequest _$AssignTechnicianRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('AssignTechnicianRequest', json, ($checkedConvert) {
      final val = AssignTechnicianRequest(
        technicianId: $checkedConvert('technicianId', (v) => v as String),
      );
      return val;
    });

Map<String, dynamic> _$AssignTechnicianRequestToJson(AssignTechnicianRequest instance) =>
    <String, dynamic>{'technicianId': instance.technicianId};

const _$AssignTechnicianRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'technicianId': {'type': 'string', 'description': 'Técnico com vínculo na loja.'},
  },
  'required': ['technicianId'],
};

CancelServiceOrderRequest _$CancelServiceOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CancelServiceOrderRequest', json, ($checkedConvert) {
      final val = CancelServiceOrderRequest(reason: $checkedConvert('reason', (v) => v as String));
      return val;
    });

Map<String, dynamic> _$CancelServiceOrderRequestToJson(CancelServiceOrderRequest instance) =>
    <String, dynamic>{'reason': instance.reason};

const _$CancelServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'reason': {'type': 'string', 'description': 'Motivo.'},
  },
  'required': ['reason'],
};
