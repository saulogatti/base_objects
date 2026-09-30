// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'cash_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CashSummary _$CashSummaryFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashSummary', json, ($checkedConvert) {
      final val = CashSummary(
        session: $checkedConvert(
          'session',
          (v) => CashSession.fromJson(v as Map<String, dynamic>),
        ),
        registerName: $checkedConvert('registerName', (v) => v as String),
        operatorName: $checkedConvert('operatorName', (v) => v as String),
        expectedCash: $checkedConvert(
          'expectedCash',
          (v) => MoneyAmount.fromJson(v),
        ),
        income: $checkedConvert('income', (v) => MoneyAmount.fromJson(v)),
        outgoing: $checkedConvert('outgoing', (v) => MoneyAmount.fromJson(v)),
        totalsByMethod: $checkedConvert(
          'totalsByMethod',
          (v) => (v as List<dynamic>)
              .map((e) => CashMethodTotal.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        actorNames: $checkedConvert(
          'actorNames',
          (v) => Map<String, String>.from(v as Map),
        ),
        documentLabels: $checkedConvert(
          'documentLabels',
          (v) => Map<String, String>.from(v as Map),
        ),
      );
      return val;
    });

Map<String, dynamic> _$CashSummaryToJson(CashSummary instance) =>
    <String, dynamic>{
      'session': instance.session.toJson(),
      'registerName': instance.registerName,
      'operatorName': instance.operatorName,
      'expectedCash': instance.expectedCash.toJson(),
      'income': instance.income.toJson(),
      'outgoing': instance.outgoing.toJson(),
      'totalsByMethod': instance.totalsByMethod.map((e) => e.toJson()).toList(),
      'actorNames': instance.actorNames,
      'documentLabels': instance.documentLabels,
    };

const _$CashSummaryJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
  },
};
