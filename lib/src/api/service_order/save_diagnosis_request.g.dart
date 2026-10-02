// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'save_diagnosis_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiagnosisItemRequest _$DiagnosisItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DiagnosisItemRequest', json, ($checkedConvert) {
  final val = DiagnosisItemRequest(
    id: $checkedConvert('id', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
    unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
    productId: $checkedConvert('productId', (v) => v as String?),
    serviceId: $checkedConvert('serviceId', (v) => v as String?),
    unitCost: $checkedConvert(
      'unitCost',
      (v) => v == null ? null : MoneyAmount.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$DiagnosisItemRequestToJson(
  DiagnosisItemRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'serviceId': instance.serviceId,
  'description': instance.description,
  'quantity': instance.quantity.toJson(),
  'unitPrice': instance.unitPrice.toJson(),
  'unitCost': instance.unitCost?.toJson(),
};

const _$DiagnosisItemRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
    'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
    'description': {'type': 'string', 'description': 'Descrição.'},
    'quantity': {
      r'$ref': r'#/$defs/QuantityAmount',
      'description': 'Quantidade, escala 3.',
    },
    'unitPrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço unitário.',
    },
    'unitCost': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Custo unitário informado pelo cliente, ou `null`.',
    },
  },
  'required': ['id', 'description', 'quantity', 'unitPrice'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

SaveDiagnosisRequest _$SaveDiagnosisRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SaveDiagnosisRequest', json, ($checkedConvert) {
  final val = SaveDiagnosisRequest(
    diagnosis: $checkedConvert('diagnosis', (v) => v as String),
    sendQuote: $checkedConvert('sendQuote', (v) => v as bool),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => DiagnosisItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    repairNotes: $checkedConvert('repairNotes', (v) => v as String?),
    technicianId: $checkedConvert('technicianId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SaveDiagnosisRequestToJson(
  SaveDiagnosisRequest instance,
) => <String, dynamic>{
  'diagnosis': instance.diagnosis,
  'repairNotes': instance.repairNotes,
  'technicianId': instance.technicianId,
  'sendQuote': instance.sendQuote,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

const _$SaveDiagnosisRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'diagnosis': {'type': 'string', 'description': 'Diagnóstico.'},
    'repairNotes': {
      'type': 'string',
      'description': 'Notas de execução, ou `null`.',
    },
    'technicianId': {'type': 'string', 'description': 'Técnico, ou `null`.'},
    'sendQuote': {
      'type': 'boolean',
      'description': 'Se o orçamento já deve ir para o cliente.',
    },
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/DiagnosisItemRequest'},
      'description': 'Itens. Substituem os anteriores.',
    },
  },
  'required': ['diagnosis', 'sendQuote', 'items'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'DiagnosisItemRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição.'},
        'quantity': {
          r'$ref': r'#/$defs/QuantityAmount',
          'description': 'Quantidade, escala 3.',
        },
        'unitPrice': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Preço unitário.',
        },
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo unitário informado pelo cliente, ou `null`.',
        },
      },
      'required': ['id', 'description', 'quantity', 'unitPrice'],
    },
  },
};
