// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'close_cash_session_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CloseCashSessionRequest _$CloseCashSessionRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CloseCashSessionRequest', json, ($checkedConvert) {
  final val = CloseCashSessionRequest(
    countedAmount: $checkedConvert(
      'countedAmount',
      (v) => MoneyAmount.fromJson(v),
    ),
    notes: $checkedConvert('notes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CloseCashSessionRequestToJson(
  CloseCashSessionRequest instance,
) => <String, dynamic>{
  'countedAmount': instance.countedAmount.toJson(),
  'notes': instance.notes,
};

const _$CloseCashSessionRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'countedAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor contado na gaveta.',
    },
    'notes': {
      'type': 'string',
      'description': 'Obrigatório quando o contado difere do esperado.',
    },
  },
  'required': ['countedAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
