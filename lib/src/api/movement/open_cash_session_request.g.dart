// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'open_cash_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenCashSessionRequest _$OpenCashSessionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OpenCashSessionRequest', json, ($checkedConvert) {
  final val = OpenCashSessionRequest(
    id: $checkedConvert('id', (v) => v as String),
    registerId: $checkedConvert('registerId', (v) => v as String),
    openingAmount: $checkedConvert(
      'openingAmount',
      (v) => MoneyAmount.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$OpenCashSessionRequestToJson(
  OpenCashSessionRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'registerId': instance.registerId,
  'openingAmount': instance.openingAmount.toJson(),
};

const _$OpenCashSessionRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID do turno. Também é a chave de idempotência.',
    },
    'registerId': {'type': 'string', 'description': 'Terminal.'},
    'openingAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Fundo de troco, maior ou igual a zero.',
    },
  },
  'required': ['id', 'registerId', 'openingAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
