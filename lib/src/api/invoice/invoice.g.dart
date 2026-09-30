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
      (v) => CashSummary.fromJson(v as Map<String, dynamic>),
    ),
  );
  return val;
});

Map<String, dynamic> _$ConfirmInvoiceResultToJson(
  ConfirmInvoiceResult instance,
) => <String, dynamic>{
  'invoice': instance.invoice.toJson(),
  'receivables': instance.receivables.map((e) => e.toJson()).toList(),
  'cashSummary': instance.cashSummary.toJson(),
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
      'description': 'Turno atualizado.',
    },
  },
  'required': ['invoice', 'receivables', 'cashSummary'],
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
    'Invoice': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {
          'type': 'string',
          'description': 'Loja. Vem do caminho, não do corpo.',
        },
        'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
        'type': {'type': 'object', 'description': 'Entrada ou saída.'},
        'status': {
          'type': 'object',
          'description': 'Situação. Muda só por comando.',
        },
        'customerId': {
          'type': 'string',
          'description': 'Cliente, ou `null` na entrada.',
        },
        'supplierId': {
          'type': 'string',
          'description': 'Fornecedor, ou `null` na saída.',
        },
        'customerName': {
          'type': 'string',
          'description': 'Nome do cliente na listagem, ou `null`.',
        },
        'supplierName': {
          'type': 'string',
          'description': 'Nome do fornecedor na listagem, ou `null`.',
        },
        'issueDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Emissão.',
        },
        'discount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Desconto no total.',
        },
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
        'cancelledBy': {
          'type': 'string',
          'description': 'Quem cancelou, ou `null`.',
        },
        'cancelledAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Cancelamento, ou `null`.',
        },
        'cancelReason': {
          'type': 'string',
          'description': 'Motivo do cancelamento, ou `null`.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração.',
        },
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
    },
    'Receivable': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'customerId': {'type': 'string', 'description': 'Cliente.'},
        'customerName': {
          'type': 'string',
          'description': 'Nome do cliente no momento da consulta.',
        },
        'invoiceId': {
          'type': 'string',
          'description': 'Nota de origem, ou `null` quando o SQL permite.',
        },
        'invoiceNumber': {
          'type': 'integer',
          'description': 'Número da nota, ou `null`.',
        },
        'installmentNumber': {
          'type': 'integer',
          'description': 'Número da parcela, a partir de 1.',
        },
        'amount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor da parcela.',
        },
        'dueDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Vencimento.',
        },
        'paidAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor já pago. Na v1, zero ou o total.',
        },
        'paidAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Quitação, ou `null`.',
        },
        'cashMovementId': {
          'type': 'string',
          'description': 'Movimento de caixa da baixa, ou `null`.',
        },
        'cancelledAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Cancelamento, ou `null`.',
        },
        'cancelReason': {
          'type': 'string',
          'description': 'Motivo do cancelamento, ou `null`.',
        },
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se está vencida e em aberto. Calculado no servidor.',
        },
      },
      'required': [
        'id',
        'storeId',
        'customerId',
        'customerName',
        'installmentNumber',
        'amount',
        'dueDate',
        'paidAmount',
        'isOverdue',
      ],
    },
    'CashMovement': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'sessionId': {'type': 'string', 'description': 'Turno.'},
        'type': {'type': 'object', 'description': 'Natureza.'},
        'paymentMethodId': {
          'type': 'string',
          'description': 'Forma, ou `null`.',
        },
        'methodName': {
          'type': 'string',
          'description': 'Nome da forma no momento do lançamento.',
        },
        'affectsCashDrawer': {
          'type': 'boolean',
          'description': 'Se afetou a gaveta.',
        },
        'amount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor. Positivo entra, negativo sai.',
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
          'description': 'Líquido (`amount` menos a taxa).',
        },
        'expectedSettlementAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Previsão de liquidação, ou `null`.',
        },
        'description': {
          'type': 'string',
          'description': 'Descrição, ou `null`.',
        },
        'referenceType': {
          'type': 'string',
          'description': 'Tipo da referência, ou `null`.',
        },
        'referenceId': {
          'type': 'string',
          'description': 'Id da referência, ou `null`.',
        },
        'refundedMovementId': {
          'type': 'string',
          'description': 'Movimento estornado, ou `null`.',
        },
        'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Inclusão.',
        },
      },
      'required': [
        'id',
        'sessionId',
        'type',
        'methodName',
        'affectsCashDrawer',
        'amount',
        'feePercent',
        'feeAmount',
        'netAmount',
        'createdAt',
      ],
    },
    'CashSession': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'registerId': {'type': 'string', 'description': 'Terminal.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'openedBy': {'type': 'string', 'description': 'Quem abriu.'},
        'openedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Abertura.',
        },
        'openingAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Fundo de troco.',
        },
        'closedBy': {
          'type': 'string',
          'description': 'Quem fechou, ou `null`.',
        },
        'closedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Fechamento, ou `null`.',
        },
        'countedAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor contado, ou `null` enquanto aberto.',
        },
        'expectedAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor esperado, ou `null` enquanto aberto.',
        },
        'difference': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Diferença, ou `null` enquanto aberto.',
        },
        'closingNotes': {
          'type': 'string',
          'description': 'Observação do fechamento, ou `null`.',
        },
        'movements': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/CashMovement'},
          'description': 'Movimentos do turno.',
        },
      },
      'required': [
        'id',
        'storeId',
        'registerId',
        'status',
        'openedBy',
        'openedAt',
        'openingAmount',
        'movements',
      ],
    },
    'CashMethodTotal': {
      'type': 'object',
      'properties': {
        'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
        'name': {'type': 'string', 'description': 'Nome da forma.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma.'},
      },
      'required': ['paymentMethodId', 'name', 'amount'],
    },
    'CashSummary': {
      'type': 'object',
      'properties': {
        'session': {r'$ref': r'#/$defs/CashSession', 'description': 'Turno.'},
        'registerName': {'type': 'string', 'description': 'Nome do terminal.'},
        'operatorName': {'type': 'string', 'description': 'Nome do operador.'},
        'expectedCash': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Gaveta esperada.',
        },
        'income': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Entradas.'},
        'outgoing': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Saídas.'},
        'totalsByMethod': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/CashMethodTotal'},
          'description': 'Totais por forma, em lista.',
        },
        'actorNames': {
          'type': 'object',
          'additionalProperties': {'type': 'string'},
          'description': 'Nomes dos autores, indexados pelo id.',
        },
        'documentLabels': {
          'type': 'object',
          'additionalProperties': {'type': 'string'},
          'description': 'Rótulos de documentos, indexados pelo id.',
        },
      },
      'required': [
        'session',
        'registerName',
        'operatorName',
        'expectedCash',
        'income',
        'outgoing',
        'totalsByMethod',
        'actorNames',
        'documentLabels',
      ],
    },
  },
};

Invoice _$InvoiceFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('Invoice', json, ($checkedConvert) {
  final val = Invoice(
    id: $checkedConvert('id', (v) => v as String),
    storeId: $checkedConvert('storeId', (v) => v as String),
    number: $checkedConvert('number', (v) => (v as num).toInt()),
    type: $checkedConvert('type', (v) => $enumDecode(_$InvoiceTypeEnumMap, v)),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$InvoiceStatusEnumMap, v),
    ),
    issueDate: $checkedConvert('issueDate', (v) => CalendarDate.fromJson(v)),
    discount: $checkedConvert('discount', (v) => MoneyAmount.fromJson(v)),
    subtotal: $checkedConvert('subtotal', (v) => MoneyAmount.fromJson(v)),
    totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    payments: $checkedConvert(
      'payments',
      (v) => (v as List<dynamic>)
          .map((e) => InvoicePayment.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    updatedAt: $checkedConvert(
      'updatedAt',
      (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
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
    'storeId': {
      'type': 'string',
      'description': 'Loja. Vem do caminho, não do corpo.',
    },
    'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
    'type': {'type': 'object', 'description': 'Entrada ou saída.'},
    'status': {
      'type': 'object',
      'description': 'Situação. Muda só por comando.',
    },
    'customerId': {
      'type': 'string',
      'description': 'Cliente, ou `null` na entrada.',
    },
    'supplierId': {
      'type': 'string',
      'description': 'Fornecedor, ou `null` na saída.',
    },
    'customerName': {
      'type': 'string',
      'description': 'Nome do cliente na listagem, ou `null`.',
    },
    'supplierName': {
      'type': 'string',
      'description': 'Nome do fornecedor na listagem, ou `null`.',
    },
    'issueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Emissão.'},
    'discount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Desconto no total.',
    },
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
    'cancelledBy': {
      'type': 'string',
      'description': 'Quem cancelou, ou `null`.',
    },
    'cancelledAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Cancelamento, ou `null`.',
    },
    'cancelReason': {
      'type': 'string',
      'description': 'Motivo do cancelamento, ou `null`.',
    },
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
    'updatedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Última alteração.',
    },
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
  },
};

const _$InvoiceTypeEnumMap = {
  InvoiceType.entry: 'entry',
  InvoiceType.exit: 'exit',
};

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.draft: 'draft',
  InvoiceStatus.confirmed: 'confirmed',
  InvoiceStatus.cancelled: 'cancelled',
};

InvoiceDraft _$InvoiceDraftFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InvoiceDraft', json, ($checkedConvert) {
      final val = InvoiceDraft(
        type: $checkedConvert(
          'type',
          (v) => $enumDecode(_$InvoiceTypeEnumMap, v),
        ),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => InvoiceItemDraft.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        customerId: $checkedConvert('customerId', (v) => v as String?),
        supplierId: $checkedConvert('supplierId', (v) => v as String?),
        issueDate: $checkedConvert(
          'issueDate',
          (v) => v == null ? null : CalendarDate.fromJson(v),
        ),
        discount: $checkedConvert(
          'discount',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        notes: $checkedConvert('notes', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$InvoiceDraftToJson(InvoiceDraft instance) =>
    <String, dynamic>{
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
      },
      'required': ['id', 'description', 'quantity', 'unitPrice'],
    },
  },
};

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

InvoiceItemDraft _$InvoiceItemDraftFromJson(Map<String, dynamic> json) =>
    $checkedCreate('InvoiceItemDraft', json, ($checkedConvert) {
      final val = InvoiceItemDraft(
        id: $checkedConvert('id', (v) => v as String),
        description: $checkedConvert('description', (v) => v as String),
        quantity: $checkedConvert(
          'quantity',
          (v) => QuantityAmount.fromJson(v),
        ),
        unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
        productId: $checkedConvert('productId', (v) => v as String?),
        serviceId: $checkedConvert('serviceId', (v) => v as String?),
        discount: $checkedConvert(
          'discount',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$InvoiceItemDraftToJson(InvoiceItemDraft instance) =>
    <String, dynamic>{
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
  },
  'required': ['id', 'description', 'quantity', 'unitPrice'],
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
