// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'payment_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('PaymentMethod', json, ($checkedConvert) {
  final val = PaymentMethod(
    id: $checkedConvert('id', (v) => v as String),
    code: $checkedConvert('code', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    affectsCashDrawer: $checkedConvert('affectsCashDrawer', (v) => v as bool),
    allowsInstallments: $checkedConvert('allowsInstallments', (v) => v as bool),
    settlementDays: $checkedConvert(
      'settlementDays',
      (v) => (v as num).toInt(),
    ),
    feePercent: $checkedConvert('feePercent', (v) => PercentAmount.fromJson(v)),
    isActive: $checkedConvert('isActive', (v) => v as bool),
    sortOrder: $checkedConvert('sortOrder', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'affectsCashDrawer': instance.affectsCashDrawer,
      'allowsInstallments': instance.allowsInstallments,
      'settlementDays': instance.settlementDays,
      'feePercent': instance.feePercent.toJson(),
      'isActive': instance.isActive,
      'sortOrder': instance.sortOrder,
    };

const _$PaymentMethodJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'code': {
      'type': 'string',
      'description': 'Código estável, por exemplo `credit`.',
    },
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'affectsCashDrawer': {
      'type': 'boolean',
      'description': 'Se o valor entra na gaveta.',
    },
    'allowsInstallments': {
      'type': 'boolean',
      'description': 'Se aceita mais de uma parcela.',
    },
    'settlementDays': {
      'type': 'integer',
      'description': 'Dias até a liquidação.',
    },
    'feePercent': {
      r'$ref': r'#/$defs/PercentAmount',
      'description': 'Taxa percentual, escala 3.',
    },
    'isActive': {'type': 'boolean', 'description': 'Se a forma está ativa.'},
    'sortOrder': {'type': 'integer', 'description': 'Ordem de exibição.'},
  },
  'required': [
    'id',
    'code',
    'name',
    'affectsCashDrawer',
    'allowsInstallments',
    'settlementDays',
    'feePercent',
    'isActive',
    'sortOrder',
  ],
  r'$defs': {
    'PercentAmount': {'type': 'object', 'properties': {}},
  },
};
