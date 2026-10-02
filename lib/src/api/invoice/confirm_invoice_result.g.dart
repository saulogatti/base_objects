// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'confirm_invoice_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
