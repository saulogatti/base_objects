// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'cash_method_total.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashMethodTotal _$CashMethodTotalFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashMethodTotal', json, ($checkedConvert) {
      final val = CashMethodTotal(
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$CashMethodTotalToJson(CashMethodTotal instance) =>
    <String, dynamic>{
      'paymentMethodId': instance.paymentMethodId,
      'name': instance.name,
      'amount': instance.amount.toJson(),
    };

const _$CashMethodTotalJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
    'name': {'type': 'string', 'description': 'Nome da forma.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma.'},
  },
  'required': ['paymentMethodId', 'name', 'amount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
