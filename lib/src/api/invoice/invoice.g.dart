// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelInvoiceRequest _$CancelInvoiceRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CancelInvoiceRequest', json, ($checkedConvert) {
  final val = CancelInvoiceRequest(
    reason: $checkedConvert('reason', (v) => v as String),
    sessionId: $checkedConvert('sessionId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CancelInvoiceRequestToJson(
  CancelInvoiceRequest instance,
) => <String, dynamic>{
  'reason': instance.reason,
  'sessionId': instance.sessionId,
};

const _$CancelInvoiceRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'reason': {'type': 'string', 'description': 'Motivo obrigatório.'},
    'sessionId': {
      'type': 'string',
      'description': 'Turno do estorno. Obrigatório na saída confirmada.',
    },
  },
  'required': ['reason'],
};
