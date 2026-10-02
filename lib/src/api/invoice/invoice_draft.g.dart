// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice_draft.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItemDraft _$InvoiceItemDraftFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InvoiceItemDraft', json, ($checkedConvert) {
      final val = InvoiceItemDraft(
        id: $checkedConvert('id', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
        unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
        productId: $checkedConvert('productId', (v) => v as String?),
        serviceId: $checkedConvert('serviceId', (v) => v as String?),
        discount: $checkedConvert('discount', (v) => v == null ? null : MoneyAmount.fromJson(v)),
        unitCost: $checkedConvert('unitCost', (v) => v == null ? null : MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$InvoiceItemDraftToJson(InvoiceItemDraft instance) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'serviceId': instance.serviceId,
  'description': instance.description,
  'quantity': instance.quantity.toJson(),
  'unitPrice': instance.unitPrice.toJson(),
  'discount': instance.discount?.toJson(),
  'unitCost': instance.unitCost?.toJson(),
};

const _$InvoiceItemDraftJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Peça, ou `null` se for serviço.'},
    'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null` se for peça.'},
    'description': {'type': 'string', 'description': 'Nome congelado.'},
    'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
    'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
    'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item, ou `null`.'},
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

InvoiceDraft _$InvoiceDraftFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InvoiceDraft', json, ($checkedConvert) {
      final val = InvoiceDraft(
        type: $checkedConvert('type', (v) => $enumDecode(_$InvoiceTypeEnumMap, v)),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => InvoiceItemDraft.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        customerId: $checkedConvert('customerId', (v) => v as String?),
        supplierId: $checkedConvert('supplierId', (v) => v as String?),
        issueDate: $checkedConvert('issueDate', (v) => v == null ? null : CalendarDate.fromJson(v)),
        discount: $checkedConvert('discount', (v) => v == null ? null : MoneyAmount.fromJson(v)),
        notes: $checkedConvert('notes', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$InvoiceDraftToJson(InvoiceDraft instance) => <String, dynamic>{
  'type': _$InvoiceTypeEnumMap[instance.type]!,
  'customerId': instance.customerId,
  'supplierId': instance.supplierId,
  'issueDate': instance.issueDate?.toJson(),
  'discount': instance.discount?.toJson(),
  'notes': instance.notes,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

const _$InvoiceDraftJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'type': {'type': 'object', 'description': 'Entrada ou saída.'},
    'customerId': {'type': 'string', 'description': 'Cliente, obrigatório em saída.'},
    'supplierId': {
      'type': 'string',
      'description': 'Fornecedor, obrigatório em entrada. No app o campo se chama `companyId`.',
    },
    'issueDate': {
      r'$ref': r'#/$defs/CalendarDate',
      'description': 'Emissão. O servidor usa hoje quando vem `null`.',
    },
    'discount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Desconto no total, ou `null` (o servidor grava zero).',
    },
    'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/InvoiceItemDraft'},
      'description': 'Itens. Substituem os anteriores.',
    },
  },
  'required': ['type', 'items'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'InvoiceItemDraft': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null` se for serviço.'},
        'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null` se for peça.'},
        'description': {'type': 'string', 'description': 'Nome congelado.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'discount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Desconto do item, ou `null`.',
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

const _$InvoiceTypeEnumMap = {InvoiceType.entry: 'entry', InvoiceType.exit: 'exit'};
