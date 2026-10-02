// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Invoice _$InvoiceFromJson(Map<String, dynamic> json) => $checkedCreate('Invoice', json, (
  $checkedConvert,
) {
  final val = Invoice(
    id: $checkedConvert('id', (v) => v as String),
    storeId: $checkedConvert('storeId', (v) => v as String),
    number: $checkedConvert('number', (v) => (v as num).toInt()),
    type: $checkedConvert('type', (v) => $enumDecode(_$InvoiceTypeEnumMap, v)),
    status: $checkedConvert('status', (v) => $enumDecode(_$InvoiceStatusEnumMap, v)),
    issueDate: $checkedConvert('issueDate', (v) => CalendarDate.fromJson(v)),
    discount: $checkedConvert('discount', (v) => MoneyAmount.fromJson(v)),
    subtotal: $checkedConvert('subtotal', (v) => MoneyAmount.fromJson(v)),
    totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
    items: $checkedConvert(
      'items',
      (v) =>
          (v as List<dynamic>).map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>)).toList(),
    ),
    payments: $checkedConvert(
      'payments',
      (v) => (v as List<dynamic>)
          .map((e) => InvoicePayment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    createdAt: $checkedConvert('createdAt', (v) => ApiInstant.fromJson(v as Map<String, dynamic>)),
    updatedAt: $checkedConvert('updatedAt', (v) => ApiInstant.fromJson(v as Map<String, dynamic>)),
    customerId: $checkedConvert('customerId', (v) => v as String?),
    supplierId: $checkedConvert('supplierId', (v) => v as String?),
    customerName: $checkedConvert('customerName', (v) => v as String?),
    supplierName: $checkedConvert('supplierName', (v) => v as String?),
    notes: $checkedConvert('notes', (v) => v as String?),
    createdBy: $checkedConvert('createdBy', (v) => v as String?),
    cancelledBy: $checkedConvert('cancelledBy', (v) => v as String?),
    cancelledAt: $checkedConvert(
      'cancelledAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    cancelReason: $checkedConvert('cancelReason', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$InvoiceToJson(Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'storeId': instance.storeId,
  'number': instance.number,
  'type': _$InvoiceTypeEnumMap[instance.type]!,
  'status': _$InvoiceStatusEnumMap[instance.status]!,
  'customerId': instance.customerId,
  'supplierId': instance.supplierId,
  'customerName': instance.customerName,
  'supplierName': instance.supplierName,
  'issueDate': instance.issueDate.toJson(),
  'discount': instance.discount.toJson(),
  'subtotal': instance.subtotal.toJson(),
  'totalValue': instance.totalValue.toJson(),
  'notes': instance.notes,
  'items': instance.items.map((e) => e.toJson()).toList(),
  'payments': instance.payments.map((e) => e.toJson()).toList(),
  'createdBy': instance.createdBy,
  'cancelledBy': instance.cancelledBy,
  'cancelledAt': instance.cancelledAt?.toJson(),
  'cancelReason': instance.cancelReason,
  'createdAt': instance.createdAt.toJson(),
  'updatedAt': instance.updatedAt.toJson(),
};

const _$InvoiceJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja. Vem do caminho, não do corpo.'},
    'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
    'type': {'type': 'object', 'description': 'Entrada ou saída.'},
    'status': {'type': 'object', 'description': 'Situação. Muda só por comando.'},
    'customerId': {'type': 'string', 'description': 'Cliente, ou `null` na entrada.'},
    'supplierId': {'type': 'string', 'description': 'Fornecedor, ou `null` na saída.'},
    'customerName': {'type': 'string', 'description': 'Nome do cliente na listagem, ou `null`.'},
    'supplierName': {'type': 'string', 'description': 'Nome do fornecedor na listagem, ou `null`.'},
    'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
    'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto no total.'},
    'subtotal': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma dos itens, calculada no servidor.',
    },
    'totalValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Total (`subtotal` menos [discount]).',
    },
    'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/InvoiceItem'},
      'description': 'Itens.',
    },
    'payments': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/InvoicePayment'},
      'description': 'Pagamentos. Vazio fora da saída confirmada.',
    },
    'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'cancelledBy': {'type': 'string', 'description': 'Quem cancelou, ou `null`.'},
    'cancelledAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Cancelamento, ou `null`.'},
    'cancelReason': {'type': 'string', 'description': 'Motivo do cancelamento, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
    'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
  },
  'required': [
    'id',
    'storeId',
    'number',
    'type',
    'status',
    'issueDate',
    'discount',
    'subtotal',
    'totalValue',
    'items',
    'payments',
    'createdAt',
    'updatedAt',
  ],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'InvoiceItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
        'description': {'type': 'string', 'description': 'Nome congelado.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo unitário. `null` sem `product:view_cost`.',
        },
        'discount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Desconto do item.'},
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total calculado no servidor.',
        },
      },
      'required': ['id', 'description', 'quantity', 'unitPrice', 'discount', 'totalValue'],
    },
    'PercentAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {'type': 'string', 'format': 'date-time', 'description': 'Instante em UTC.'},
      },
      'required': ['value'],
    },
    'InvoicePayment': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'invoiceId': {'type': 'string', 'description': 'Nota.'},
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'installments': {'type': 'integer', 'description': 'Número de parcelas.'},
        'cashSessionId': {'type': 'string', 'description': 'Turno, ou `null`.'},
        'checkoutId': {'type': 'string', 'description': 'Recebimento.'},
        'cashMovementId': {
          'type': 'string',
          'description': 'Movimento de caixa, ou `null` no crediário.',
        },
        'methodName': {'type': 'string', 'description': 'Nome da forma no momento do recebimento.'},
        'affectsCashDrawer': {'type': 'boolean', 'description': 'Se afetou a gaveta.'},
        'feePercent': {
          r'$ref': r'#/$defs/PercentAmount',
          'description': 'Taxa percentual, escala 3.',
        },
        'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da taxa.'},
        'netAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Líquido.'},
        'expectedSettlementAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Previsão de liquidação, ou `null`.',
        },
      },
      'required': [
        'id',
        'invoiceId',
        'paymentMethodId',
        'amount',
        'installments',
        'checkoutId',
        'methodName',
        'affectsCashDrawer',
        'feePercent',
        'feeAmount',
        'netAmount',
      ],
    },
  },
};

const _$InvoiceTypeEnumMap = {InvoiceType.entry: 'entry', InvoiceType.exit: 'exit'};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.confirmed: 'confirmed',
  InvoiceStatus.cancelled: 'cancelled',
};
