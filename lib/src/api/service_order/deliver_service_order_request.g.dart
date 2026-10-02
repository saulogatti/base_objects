// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'deliver_service_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliverServiceOrderRequest _$DeliverServiceOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('DeliverServiceOrderRequest', json, ($checkedConvert) {
      final val = DeliverServiceOrderRequest(
        deliveredToName: $checkedConvert('deliveredToName', (v) => v as String),
        invoiceId: $checkedConvert('invoiceId', (v) => v as String),
        checkout: $checkedConvert(
          'checkout',
          (v) => CheckoutRequest.fromJson(v as Map<String, dynamic>),
        ),
        notes: $checkedConvert('notes', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$DeliverServiceOrderRequestToJson(DeliverServiceOrderRequest instance) =>
    <String, dynamic>{
      'deliveredToName': instance.deliveredToName,
      'notes': instance.notes,
      'invoiceId': instance.invoiceId,
      'checkout': instance.checkout.toJson(),
    };

const _$DeliverServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'deliveredToName': {'type': 'string', 'description': 'Quem retirou.'},
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'invoiceId': {
      'type': 'string',
      'description': 'UUID da nota, gerado pelo app para idempotência.',
    },
    'checkout': {
      r'$ref': r'#/$defs/CheckoutRequest',
      'description': 'Recebimento, com as mesmas regras da venda.',
    },
  },
  'required': ['deliveredToName', 'invoiceId', 'checkout'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'CalendarDate': {'type': 'object', 'properties': {}},
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
