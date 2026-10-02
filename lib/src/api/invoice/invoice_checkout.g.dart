// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'invoice_checkout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelInvoiceRequest _$CancelInvoiceRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CancelInvoiceRequest', json, ($checkedConvert) {
      final val = CancelInvoiceRequest(
        reason: $checkedConvert('reason', (v) => v as String),
        sessionId: $checkedConvert('sessionId', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CancelInvoiceRequestToJson(CancelInvoiceRequest instance) =>
    <String, dynamic>{'reason': instance.reason, 'sessionId': instance.sessionId};

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

CheckoutInstallmentRequest _$CheckoutInstallmentRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CheckoutInstallmentRequest', json, ($checkedConvert) {
      final val = CheckoutInstallmentRequest(
        id: $checkedConvert('id', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
        dueDate: $checkedConvert('dueDate', (v) => CalendarDate.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$CheckoutInstallmentRequestToJson(CheckoutInstallmentRequest instance) =>
    <String, dynamic>{
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

CheckoutPaymentRequest _$CheckoutPaymentRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CheckoutPaymentRequest', json, ($checkedConvert) {
      final val = CheckoutPaymentRequest(
        id: $checkedConvert('id', (v) => v as String),
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
        installments: $checkedConvert('installments', (v) => (v as num).toInt()),
        schedule: $checkedConvert(
          'schedule',
          (v) => (v as List<dynamic>)
              .map((e) => CheckoutInstallmentRequest.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CheckoutPaymentRequestToJson(CheckoutPaymentRequest instance) =>
    <String, dynamic>{
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
              .map((e) => CheckoutPaymentRequest.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CheckoutRequestToJson(CheckoutRequest instance) => <String, dynamic>{
  'id': instance.id,
  'sessionId': instance.sessionId,
  'payments': instance.payments.map((e) => e.toJson()).toList(),
};

const _$CheckoutRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
  },
};
