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

CheckoutInstallmentRequest _$CheckoutInstallmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CheckoutInstallmentRequest', json, ($checkedConvert) {
  final val = CheckoutInstallmentRequest(
    id: $checkedConvert('id', (v) => v as String),
    amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
    dueDate: $checkedConvert('dueDate', (v) => CalendarDate.fromJson(v)),
  );
  return val;
});

Map<String, dynamic> _$CheckoutInstallmentRequestToJson(
  CheckoutInstallmentRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'amount': instance.amount.toJson(),
  'dueDate': instance.dueDate.toJson(),
};

const _$CheckoutInstallmentRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. Vira `receivables.id`.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
    'dueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Vencimento.'},
  },
  'required': ['id', 'amount', 'dueDate'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'CalendarDate': {'type': 'object', 'properties': {}},
  },
};

CheckoutPaymentRequest _$CheckoutPaymentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CheckoutPaymentRequest', json, ($checkedConvert) {
  final val = CheckoutPaymentRequest(
    id: $checkedConvert('id', (v) => v as String),
    paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
    amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
    installments: $checkedConvert('installments', (v) => (v as num).toInt()),
    schedule: $checkedConvert(
      'schedule',
      (v) => (v as List<dynamic>)
          .map(
            (e) =>
                CheckoutInstallmentRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$CheckoutPaymentRequestToJson(
  CheckoutPaymentRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'paymentMethodId': instance.paymentMethodId,
  'amount': instance.amount.toJson(),
  'installments': instance.installments,
  'schedule': instance.schedule.map((e) => e.toJson()).toList(),
};

const _$CheckoutPaymentRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID. Vira `invoice_payments.id`.',
    },
    'paymentMethodId': {'type': 'string', 'description': 'Forma ativa.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
    'installments': {
      'type': 'integer',
      'description': 'Parcelas. Maior que 1 só se a forma permitir.',
    },
    'schedule': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/CheckoutInstallmentRequest'},
      'description': 'Cronograma. Só no crediário.',
    },
  },
  'required': ['id', 'paymentMethodId', 'amount', 'installments', 'schedule'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'CalendarDate': {'type': 'object', 'properties': {}},
    'CheckoutInstallmentRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Vira `receivables.id`.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'dueDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Vencimento.',
        },
      },
      'required': ['id', 'amount', 'dueDate'],
    },
  },
};

CheckoutRequest _$CheckoutRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CheckoutRequest', json, ($checkedConvert) {
      final val = CheckoutRequest(
        id: $checkedConvert('id', (v) => v as String),
        sessionId: $checkedConvert('sessionId', (v) => v as String),
        payments: $checkedConvert(
          'payments',
          (v) => (v as List<dynamic>)
              .map(
                (e) =>
                    CheckoutPaymentRequest.fromJson(e as Map<String, dynamic>),
              )
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CheckoutRequestToJson(CheckoutRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sessionId': instance.sessionId,
      'payments': instance.payments.map((e) => e.toJson()).toList(),
    };

const _$CheckoutRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'Chave de idempotência do recebimento.',
    },
    'sessionId': {
      'type': 'string',
      'description': 'Turno aberto do operador do token.',
    },
    'payments': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/CheckoutPaymentRequest'},
      'description': 'Pagamentos.',
    },
  },
  'required': ['id', 'sessionId', 'payments'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'CalendarDate': {'type': 'object', 'properties': {}},
    'CheckoutInstallmentRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Vira `receivables.id`.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'dueDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Vencimento.',
        },
      },
      'required': ['id', 'amount', 'dueDate'],
    },
    'CheckoutPaymentRequest': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'UUID. Vira `invoice_payments.id`.',
        },
        'paymentMethodId': {'type': 'string', 'description': 'Forma ativa.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'installments': {
          'type': 'integer',
          'description': 'Parcelas. Maior que 1 só se a forma permitir.',
        },
        'schedule': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/CheckoutInstallmentRequest'},
          'description': 'Cronograma. Só no crediário.',
        },
      },
      'required': [
        'id',
        'paymentMethodId',
        'amount',
        'installments',
        'schedule',
      ],
    },
  },
};

ConfirmInvoiceRequest _$ConfirmInvoiceRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConfirmInvoiceRequest', json, ($checkedConvert) {
  final val = ConfirmInvoiceRequest(
    allowNegativeStock: $checkedConvert('allowNegativeStock', (v) => v as bool),
    invoice: $checkedConvert(
      'invoice',
      (v) =>
          v == null ? null : InvoiceDraft.fromJson(v as Map<String, dynamic>),
    ),
    checkout: $checkedConvert(
      'checkout',
      (v) => v == null
          ? null
          : CheckoutRequest.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ConfirmInvoiceRequestToJson(
  ConfirmInvoiceRequest instance,
) => <String, dynamic>{
  'invoice': instance.invoice?.toJson(),
  'allowNegativeStock': instance.allowNegativeStock,
  'checkout': instance.checkout?.toJson(),
};

const _$ConfirmInvoiceRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'invoice': {
      r'$ref': r'#/$defs/InvoiceDraft',
      'description': 'Rascunho, quando a nota ainda não foi gravada.',
    },
    'allowNegativeStock': {
      'type': 'boolean',
      'description': 'Se aceita saldo negativo. Exige `stock:adjust`.',
    },
    'checkout': {
      r'$ref': r'#/$defs/CheckoutRequest',
      'description': 'Recebimento. Obrigatório na saída; recusado na entrada.',
    },
  },
  'required': ['allowNegativeStock'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'InvoiceItemDraft': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {
          'type': 'string',
          'description': 'Peça, ou `null` se for serviço.',
        },
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null` se for peça.',
        },
        'description': {'type': 'string', 'description': 'Nome congelado.'},
        'quantity': {
          r'$ref': r'#/$defs/QuantityAmount',
          'description': 'Quantidade, escala 3.',
        },
        'unitPrice': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Preço unitário.',
        },
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
    'InvoiceDraft': {
      'type': 'object',
      'properties': {
        'type': {'type': 'object', 'description': 'Entrada ou saída.'},
        'customerId': {
          'type': 'string',
          'description': 'Cliente, obrigatório em saída.',
        },
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
          'description':
              'Desconto no total, ou `null` (o servidor grava zero).',
        },
        'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/InvoiceItemDraft'},
          'description': 'Itens. Substituem os anteriores.',
        },
      },
      'required': ['type', 'items'],
    },
    'CheckoutInstallmentRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Vira `receivables.id`.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'dueDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Vencimento.',
        },
      },
      'required': ['id', 'amount', 'dueDate'],
    },
    'CheckoutPaymentRequest': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'UUID. Vira `invoice_payments.id`.',
        },
        'paymentMethodId': {'type': 'string', 'description': 'Forma ativa.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'installments': {
          'type': 'integer',
          'description': 'Parcelas. Maior que 1 só se a forma permitir.',
        },
        'schedule': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/CheckoutInstallmentRequest'},
          'description': 'Cronograma. Só no crediário.',
        },
      },
      'required': [
        'id',
        'paymentMethodId',
        'amount',
        'installments',
        'schedule',
      ],
    },
    'CheckoutRequest': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'Chave de idempotência do recebimento.',
        },
        'sessionId': {
          'type': 'string',
          'description': 'Turno aberto do operador do token.',
        },
        'payments': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/CheckoutPaymentRequest'},
          'description': 'Pagamentos.',
        },
      },
      'required': ['id', 'sessionId', 'payments'],
    },
  },
};

ConfirmInvoiceResult _$ConfirmInvoiceResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ConfirmInvoiceResult', json, ($checkedConvert) {
  final val = ConfirmInvoiceResult(
    invoice: $checkedConvert(
      'invoice',
      (v) => Invoice.fromJson(v as Map<String, dynamic>),
    ),
    receivables: $checkedConvert(
      'receivables',
      (v) => (v as List<dynamic>)
          .map((e) => Receivable.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    cashSummary: $checkedConvert(
      'cashSummary',
      (v) => v == null ? null : CashSummary.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ConfirmInvoiceResultToJson(
  ConfirmInvoiceResult instance,
) => <String, dynamic>{
  'invoice': instance.invoice.toJson(),
  'receivables': instance.receivables.map((e) => e.toJson()).toList(),
  'cashSummary': instance.cashSummary?.toJson(),
};

const _$ConfirmInvoiceResultJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'invoice': {r'$ref': r'#/$defs/Invoice', 'description': 'Nota confirmada.'},
    'receivables': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/Receivable'},
      'description': 'Parcelas geradas.',
    },
    'cashSummary': {
      r'$ref': r'#/$defs/CashSummary',
      'description': 'Turno atualizado, ou `null` quando a confirmação não movimenta caixa.',
    },
  },
  'required': ['invoice', 'receivables'],
  r'$defs': {
    'CalendarDate': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'InvoiceItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
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
    },
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
    'InvoicePayment': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'invoiceId': {'type': 'string', 'description': 'Nota.'},
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'installments': {
          'type': 'integer',
          'description': 'Número de parcelas.',
        },
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
        'netAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Líquido.',
        },
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
