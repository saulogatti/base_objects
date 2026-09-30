// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'cash_session.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashSession _$CashSessionFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashSession', json, ($checkedConvert) {
      final val = CashSession(
        id: $checkedConvert('id', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        registerId: $checkedConvert('registerId', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$CashSessionStatusEnumMap, v),
        ),
        openedBy: $checkedConvert('openedBy', (v) => v as String),
        openedAt: $checkedConvert(
          'openedAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        openingAmount: $checkedConvert(
          'openingAmount',
          (v) => MoneyAmount.fromJson(v),
        ),
        movements: $checkedConvert(
          'movements',
          (v) => (v as List<dynamic>)
              .map((e) => CashMovement.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        closedBy: $checkedConvert('closedBy', (v) => v as String?),
        closedAt: $checkedConvert(
          'closedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        countedAmount: $checkedConvert(
          'countedAmount',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        expectedAmount: $checkedConvert(
          'expectedAmount',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        difference: $checkedConvert(
          'difference',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        closingNotes: $checkedConvert('closingNotes', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CashSessionToJson(CashSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'registerId': instance.registerId,
      'status': _$CashSessionStatusEnumMap[instance.status]!,
      'openedBy': instance.openedBy,
      'openedAt': instance.openedAt.toJson(),
      'openingAmount': instance.openingAmount.toJson(),
      'closedBy': instance.closedBy,
      'closedAt': instance.closedAt?.toJson(),
      'countedAmount': instance.countedAmount?.toJson(),
      'expectedAmount': instance.expectedAmount?.toJson(),
      'difference': instance.difference?.toJson(),
      'closingNotes': instance.closingNotes,
      'movements': instance.movements.map((e) => e.toJson()).toList(),
    };

const _$CashSessionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'registerId': {'type': 'string', 'description': 'Terminal.'},
    'status': {'type': 'object', 'description': 'Situação.'},
    'openedBy': {'type': 'string', 'description': 'Quem abriu.'},
    'openedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Abertura.'},
    'openingAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Fundo de troco.',
    },
    'closedBy': {'type': 'string', 'description': 'Quem fechou, ou `null`.'},
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
  r'$defs': {
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
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
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
  },
};

const _$CashSessionStatusEnumMap = {
  CashSessionStatus.open: 'open',
  CashSessionStatus.closed: 'closed',
};
