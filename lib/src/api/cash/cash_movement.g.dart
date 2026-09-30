// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'cash_movement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashMovement _$CashMovementFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CashMovement', json, ($checkedConvert) {
  final val = CashMovement(
    id: $checkedConvert('id', (v) => v as String),
    sessionId: $checkedConvert('sessionId', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$CashMovementTypeEnumMap, v),
    ),
    methodName: $checkedConvert('methodName', (v) => v as String),
    affectsCashDrawer: $checkedConvert('affectsCashDrawer', (v) => v as bool),
    amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
    feePercent: $checkedConvert('feePercent', (v) => PercentAmount.fromJson(v)),
    feeAmount: $checkedConvert('feeAmount', (v) => MoneyAmount.fromJson(v)),
    netAmount: $checkedConvert('netAmount', (v) => MoneyAmount.fromJson(v)),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String?),
    expectedSettlementAt: $checkedConvert(
      'expectedSettlementAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    description: $checkedConvert('description', (v) => v as String?),
    referenceType: $checkedConvert('referenceType', (v) => v as String?),
    referenceId: $checkedConvert('referenceId', (v) => v as String?),
    refundedMovementId: $checkedConvert(
      'refundedMovementId',
      (v) => v as String?,
    ),
    createdBy: $checkedConvert('createdBy', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CashMovementToJson(CashMovement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'type': _$CashMovementTypeEnumMap[instance.type]!,
      'paymentMethodId': instance.paymentMethodId,
      'methodName': instance.methodName,
      'affectsCashDrawer': instance.affectsCashDrawer,
      'amount': instance.amount.toJson(),
      'feePercent': instance.feePercent.toJson(),
      'feeAmount': instance.feeAmount.toJson(),
      'netAmount': instance.netAmount.toJson(),
      'expectedSettlementAt': instance.expectedSettlementAt?.toJson(),
      'description': instance.description,
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'refundedMovementId': instance.refundedMovementId,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toJson(),
    };

const _$CashMovementJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'sessionId': {'type': 'string', 'description': 'Turno.'},
    'type': {'type': 'object', 'description': 'Natureza.'},
    'paymentMethodId': {'type': 'string', 'description': 'Forma, ou `null`.'},
    'methodName': {
      'type': 'string',
      'description': 'Nome da forma no momento do lançamento.',
    },
    'affectsCashDrawer': {
      'type': 'boolean',
      'description': 'Se afetou a gaveta.',
    },
    'amount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor. Positivo entra, negativo sai.',
    },
    'feePercent': {
      r'$ref': r'#/$defs/PercentAmount',
      'description': 'Taxa percentual, escala 3.',
    },
    'feeAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor da taxa.',
    },
    'netAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Líquido (`amount` menos a taxa).',
    },
    'expectedSettlementAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Previsão de liquidação, ou `null`.',
    },
    'description': {'type': 'string', 'description': 'Descrição, ou `null`.'},
    'referenceType': {
      'type': 'string',
      'description': 'Tipo da referência, ou `null`.',
    },
    'referenceId': {
      'type': 'string',
      'description': 'Id da referência, ou `null`.',
    },
    'refundedMovementId': {
      'type': 'string',
      'description': 'Movimento estornado, ou `null`.',
    },
    'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
  },
  'required': [
    'id',
    'sessionId',
    'type',
    'methodName',
    'affectsCashDrawer',
    'amount',
    'feePercent',
    'feeAmount',
    'netAmount',
    'createdAt',
  ],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
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

const _$CashMovementTypeEnumMap = {
  CashMovementType.sale: 'sale',
  CashMovementType.serviceOrder: 'service_order',
  CashMovementType.supply: 'supply',
  CashMovementType.withdrawal: 'withdrawal',
  CashMovementType.expense: 'expense',
  CashMovementType.refund: 'refund',
  CashMovementType.adjustment: 'adjustment',
};
