// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'confirm_invoice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmInvoiceRequest _$ConfirmInvoiceRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ConfirmInvoiceRequest', json, ($checkedConvert) {
      final val = ConfirmInvoiceRequest(
        allowNegativeStock: $checkedConvert('allowNegativeStock', (v) => v as bool),
        invoice: $checkedConvert(
          'invoice',
          (v) => v == null ? null : InvoiceDraft.fromJson(v as Map<String, dynamic>),
        ),
        checkout: $checkedConvert(
          'checkout',
          (v) => v == null ? null : CheckoutRequest.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ConfirmInvoiceRequestToJson(ConfirmInvoiceRequest instance) =>
    <String, dynamic>{
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
    'InvoiceDraft': {
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
    },
    'CheckoutInstallmentRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Vira `receivables.id`.'},
        'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor.'},
        'dueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Vencimento.'},
      },
      'required': ['id', 'amount', 'dueDate'],
    },
    'CheckoutPaymentRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID. Vira `invoice_payments.id`.'},
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
    },
    'CheckoutRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'Chave de idempotência do recebimento.'},
        'sessionId': {'type': 'string', 'description': 'Turno aberto do operador do token.'},
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
