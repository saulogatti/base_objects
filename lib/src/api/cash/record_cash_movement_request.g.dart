// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'record_cash_movement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecordCashMovementRequest _$RecordCashMovementRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RecordCashMovementRequest', json, ($checkedConvert) {
  final val = RecordCashMovementRequest(
    id: $checkedConvert('id', (v) => v as String),
    type: $checkedConvert(
      'type',
      (v) => $enumDecode(_$CashMovementTypeEnumMap, v),
    ),
    amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
    reason: $checkedConvert('reason', (v) => v as String),
    direction: $checkedConvert(
      'direction',
      (v) => $enumDecodeNullable(_$CashAdjustmentDirectionEnumMap, v),
    ),
  );
  return val;
});

Map<String, dynamic> _$RecordCashMovementRequestToJson(
  RecordCashMovementRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'type': _$CashMovementTypeEnumMap[instance.type]!,
  'amount': instance.amount.toJson(),
  'reason': instance.reason,
  'direction': _$CashAdjustmentDirectionEnumMap[instance.direction],
};

const _$RecordCashMovementRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID do movimento. Também é a chave de idempotência.',
    },
    'type': {
      'type': 'object',
      'description': '`supply`, `withdrawal`, `expense` ou `adjustment`.',
    },
    'amount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor sempre positivo. O servidor aplica o sinal.',
    },
    'reason': {'type': 'string', 'description': 'Justificativa obrigatória.'},
    'direction': {
      'type': 'object',
      'description': 'Sentido do acerto. As outras naturezas ignoram.',
    },
  },
  'required': ['id', 'type', 'amount', 'reason'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
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

const _$CashAdjustmentDirectionEnumMap = {
  CashAdjustmentDirection.inward: 'in',
  CashAdjustmentDirection.outward: 'out',
};
