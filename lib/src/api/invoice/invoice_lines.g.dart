// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice_lines.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) => $checkedCreate(
  'InvoiceItem',
  json,
  ($checkedConvert) {
    final val = InvoiceItem(
      id: $checkedConvert('id', (v) => v as String),
      description: $checkedConvert('description', (v) => v as String),
      quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
      unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
      discount: $checkedConvert('discount', (v) => MoneyAmount.fromJson(v)),
      totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
      productId: $checkedConvert('productId', (v) => v as String?),
      serviceId: $checkedConvert('serviceId', (v) => v as String?),
      unitCost: $checkedConvert(
        'unitCost',
        (v) => v == null ? null : MoneyAmount.fromJson(v),
      ),
    );
    return val;
  },
);

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'serviceId': instance.serviceId,
      'description': instance.description,
      'quantity': instance.quantity.toJson(),
      'unitPrice': instance.unitPrice.toJson(),
      'unitCost': instance.unitCost?.toJson(),
      'discount': instance.discount.toJson(),
      'totalValue': instance.totalValue.toJson(),
    };

const _$InvoiceItemJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
    'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
    'description': {'type': 'string', 'description': 'Nome congelado.'},
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
      'description': 'Custo unitário. `null` sem `product:view_cost`.',
    },
    'discount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Desconto do item.',
    },
    'totalValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Total calculado no servidor.',
    },
  },
  'required': [
    'id',
    'description',
    'quantity',
    'unitPrice',
    'discount',
    'totalValue',
  ],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

InvoicePayment _$InvoicePaymentFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('InvoicePayment', json, ($checkedConvert) {
  final val = InvoicePayment(
    id: $checkedConvert('id', (v) => v as String),
    invoiceId: $checkedConvert('invoiceId', (v) => v as String),
    paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
    amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
    installments: $checkedConvert('installments', (v) => (v as num).toInt()),
    checkoutId: $checkedConvert('checkoutId', (v) => v as String),
    methodName: $checkedConvert('methodName', (v) => v as String),
    affectsCashDrawer: $checkedConvert('affectsCashDrawer', (v) => v as bool),
    feePercent: $checkedConvert('feePercent', (v) => PercentAmount.fromJson(v)),
    feeAmount: $checkedConvert('feeAmount', (v) => MoneyAmount.fromJson(v)),
    netAmount: $checkedConvert('netAmount', (v) => MoneyAmount.fromJson(v)),
    cashSessionId: $checkedConvert('cashSessionId', (v) => v as String?),
    cashMovementId: $checkedConvert('cashMovementId', (v) => v as String?),
    expectedSettlementAt: $checkedConvert(
      'expectedSettlementAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$InvoicePaymentToJson(InvoicePayment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceId': instance.invoiceId,
      'paymentMethodId': instance.paymentMethodId,
      'amount': instance.amount.toJson(),
      'installments': instance.installments,
      'cashSessionId': instance.cashSessionId,
      'checkoutId': instance.checkoutId,
      'cashMovementId': instance.cashMovementId,
      'methodName': instance.methodName,
      'affectsCashDrawer': instance.affectsCashDrawer,
      'feePercent': instance.feePercent.toJson(),
      'feeAmount': instance.feeAmount.toJson(),
      'netAmount': instance.netAmount.toJson(),
      'expectedSettlementAt': instance.expectedSettlementAt?.toJson(),
    };

const _$InvoicePaymentJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
    'methodName': {
      'type': 'string',
      'description': 'Nome da forma no momento do recebimento.',
    },
    'affectsCashDrawer': {
      'type': 'boolean',
      'description': 'Se afetou a gaveta.',
    },
    'feePercent': {
      r'$ref': r'#/$defs/PercentAmount',
      'description': 'Taxa percentual, escala 3.',
    },
    'feeAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor da taxa.',
    },
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
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {
      'type': 'object',
      'properties': {
        'value': {
          'type': 'string',
          'format': 'date-time',
          'description': 'Instante em UTC.',
        },
      },
      'required': ['value'],
    },
  },
};

RefundMethodAmount _$RefundMethodAmountFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RefundMethodAmount', json, ($checkedConvert) {
      final val = RefundMethodAmount(
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$RefundMethodAmountToJson(RefundMethodAmount instance) =>
    <String, dynamic>{
      'paymentMethodId': instance.paymentMethodId,
      'name': instance.name,
      'amount': instance.amount.toJson(),
    };

const _$RefundMethodAmountJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
    'name': {'type': 'string', 'description': 'Nome da forma.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
  },
  'required': ['paymentMethodId', 'name', 'amount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

RefundPreview _$RefundPreviewFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RefundPreview', json, ($checkedConvert) {
  final val = RefundPreview(
    amountsByMethod: $checkedConvert(
      'amountsByMethod',
      (v) => (v as List<dynamic>)
          .map((e) => RefundMethodAmount.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    openInstallments: $checkedConvert(
      'openInstallments',
      (v) => (v as num).toInt(),
    ),
    openAmount: $checkedConvert('openAmount', (v) => MoneyAmount.fromJson(v)),
  );
  return val;
});

Map<String, dynamic> _$RefundPreviewToJson(
  RefundPreview instance,
) => <String, dynamic>{
  'amountsByMethod': instance.amountsByMethod.map((e) => e.toJson()).toList(),
  'openInstallments': instance.openInstallments,
  'openAmount': instance.openAmount.toJson(),
};

const _$RefundPreviewJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'amountsByMethod': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/RefundMethodAmount'},
      'description': 'Valores por forma, em lista.',
    },
    'openInstallments': {
      'type': 'integer',
      'description': 'Parcelas ainda em aberto.',
    },
    'openAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das parcelas em aberto.',
    },
  },
  'required': ['amountsByMethod', 'openInstallments', 'openAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'RefundMethodAmount': {
      'type': 'object',
      'properties': {
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'name': {'type': 'string', 'description': 'Nome da forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
      },
      'required': ['paymentMethodId', 'name', 'amount'],
    },
  },
};
