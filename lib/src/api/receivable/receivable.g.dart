// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'receivable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Receivable _$ReceivableFromJson(Map<String, dynamic> json) => $checkedCreate(
  'Receivable',
  json,
  ($checkedConvert) {
    final val = Receivable(
      id: $checkedConvert('id', (v) => v as String),
      storeId: $checkedConvert('storeId', (v) => v as String),
      customerId: $checkedConvert('customerId', (v) => v as String),
      customerName: $checkedConvert('customerName', (v) => v as String),
      installmentNumber: $checkedConvert(
        'installmentNumber',
        (v) => (v as num).toInt(),
      ),
      amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
      dueDate: $checkedConvert('dueDate', (v) => CalendarDate.fromJson(v)),
      paidAmount: $checkedConvert('paidAmount', (v) => MoneyAmount.fromJson(v)),
      isOverdue: $checkedConvert('isOverdue', (v) => v as bool),
      invoiceId: $checkedConvert('invoiceId', (v) => v as String?),
      invoiceNumber: $checkedConvert(
        'invoiceNumber',
        (v) => (v as num?)?.toInt(),
      ),
      paidAt: $checkedConvert(
        'paidAt',
        (v) =>
            v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
      ),
      cashMovementId: $checkedConvert('cashMovementId', (v) => v as String?),
      cancelledAt: $checkedConvert(
        'cancelledAt',
        (v) =>
            v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
      ),
      cancelReason: $checkedConvert('cancelReason', (v) => v as String?),
    );
    return val;
  },
);

Map<String, dynamic> _$ReceivableToJson(Receivable instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'invoiceId': instance.invoiceId,
      'invoiceNumber': instance.invoiceNumber,
      'installmentNumber': instance.installmentNumber,
      'amount': instance.amount.toJson(),
      'dueDate': instance.dueDate.toJson(),
      'paidAmount': instance.paidAmount.toJson(),
      'paidAt': instance.paidAt?.toJson(),
      'cashMovementId': instance.cashMovementId,
      'cancelledAt': instance.cancelledAt?.toJson(),
      'cancelReason': instance.cancelReason,
      'isOverdue': instance.isOverdue,
    };

const _$ReceivableJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
    'dueDate': {r'$ref': r'#/$defs/CalendarDate', 'description': 'Vencimento.'},
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
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'CalendarDate': {'type': 'object', 'properties': {}},
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

SettleReceivableRequest _$SettleReceivableRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SettleReceivableRequest', json, ($checkedConvert) {
  final val = SettleReceivableRequest(
    id: $checkedConvert('id', (v) => v as String),
    sessionId: $checkedConvert('sessionId', (v) => v as String),
    paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$SettleReceivableRequestToJson(
  SettleReceivableRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'sessionId': instance.sessionId,
  'paymentMethodId': instance.paymentMethodId,
};

const _$SettleReceivableRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'Chave de idempotência. Vira o id do movimento de caixa.',
    },
    'sessionId': {'type': 'string', 'description': 'Turno aberto do operador.'},
    'paymentMethodId': {
      'type': 'string',
      'description': 'Forma ativa, exceto crediário.',
    },
  },
  'required': ['id', 'sessionId', 'paymentMethodId'],
};
