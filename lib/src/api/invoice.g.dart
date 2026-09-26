// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, inference_failure_on_collection_literal

part of 'invoice.dart';

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
  },
  'required': ['id', 'description', 'quantity', 'unitPrice'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
