// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, inference_failure_on_collection_literal

part of 'cash.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) =>
    $checkedCreate('PaymentMethod', json, ($checkedConvert) {
      final val = PaymentMethod(
        id: $checkedConvert('id', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        affectsCashDrawer: $checkedConvert('affectsCashDrawer', (v) => v as bool),
        allowsInstallments: $checkedConvert('allowsInstallments', (v) => v as bool),
        settlementDays: $checkedConvert('settlementDays', (v) => (v as num).toInt()),
        feePercent: $checkedConvert('feePercent', (v) => PercentAmount.fromJson(v)),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        sortOrder: $checkedConvert('sortOrder', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) => <String, dynamic>{
  'id': instance.id,
  'code': instance.code,
  'name': instance.name,
  'affectsCashDrawer': instance.affectsCashDrawer,
  'allowsInstallments': instance.allowsInstallments,
  'settlementDays': instance.settlementDays,
  'feePercent': instance.feePercent.toJson(),
  'isActive': instance.isActive,
  'sortOrder': instance.sortOrder,
};

const _$PaymentMethodJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'code': {'type': 'string', 'description': 'Código estável, por exemplo `credit`.'},
    'name': {'type': 'string', 'description': 'Nome de exibição.'},
    'affectsCashDrawer': {'type': 'boolean', 'description': 'Se o valor entra na gaveta.'},
    'allowsInstallments': {'type': 'boolean', 'description': 'Se aceita mais de uma parcela.'},
    'settlementDays': {'type': 'integer', 'description': 'Dias até a liquidação.'},
    'feePercent': {r'$ref': r'#/$defs/PercentAmount', 'description': 'Taxa percentual, escala 3.'},
    'isActive': {'type': 'boolean', 'description': 'Se a forma está ativa.'},
    'sortOrder': {'type': 'integer', 'description': 'Ordem de exibição.'},
  },
  'required': [
    'id',
    'code',
    'name',
    'affectsCashDrawer',
    'allowsInstallments',
    'settlementDays',
    'feePercent',
    'isActive',
    'sortOrder',
  ],
  r'$defs': {
    'PercentAmount': {'type': 'object', 'properties': {}},
  },
};

CashRegister _$CashRegisterFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashRegister', json, ($checkedConvert) {
      final val = CashRegister(
        id: $checkedConvert('id', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        isActive: $checkedConvert('isActive', (v) => v as bool),
        createdAt: $checkedConvert('createdAt', (v) => ApiInstant.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$CashRegisterToJson(CashRegister instance) => <String, dynamic>{
  'id': instance.id,
  'storeId': instance.storeId,
  'name': instance.name,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toJson(),
};

const _$CashRegisterJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'name': {'type': 'string', 'description': 'Nome, por exemplo `Caixa 1`.'},
    'isActive': {'type': 'boolean', 'description': 'Se o terminal está ativo.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
  },
  'required': ['id', 'storeId', 'name', 'isActive', 'createdAt'],
  r'$defs': {
    'ApiInstant': {'type': 'object', 'properties': {}},
  },
};

CreateCashRegisterRequest _$CreateCashRegisterRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CreateCashRegisterRequest', json, ($checkedConvert) {
      final val = CreateCashRegisterRequest(
        name: $checkedConvert('name', (v) => v as String),
        id: $checkedConvert('id', (v) => v as String?),
        isActive: $checkedConvert('isActive', (v) => v as bool? ?? true),
      );
      return val;
    });

Map<String, dynamic> _$CreateCashRegisterRequestToJson(CreateCashRegisterRequest instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name, 'isActive': instance.isActive};

const _$CreateCashRegisterRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID. O servidor gera se vier `null`.'},
    'name': {'type': 'string', 'description': 'Nome do terminal.'},
    'isActive': {
      'type': 'boolean',
      'description': 'Padrão `true` quando o corpo omite.',
      'default': true,
    },
  },
  'required': ['name'],
};

CashMovement _$CashMovementFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashMovement', json, ($checkedConvert) {
      final val = CashMovement(
        id: $checkedConvert('id', (v) => v as String),
        sessionId: $checkedConvert('sessionId', (v) => v as String),
        type: $checkedConvert('type', (v) => $enumDecode(_$CashMovementTypeEnumMap, v)),
        methodName: $checkedConvert('methodName', (v) => v as String),
        affectsCashDrawer: $checkedConvert('affectsCashDrawer', (v) => v as bool),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
        feePercent: $checkedConvert('feePercent', (v) => PercentAmount.fromJson(v)),
        feeAmount: $checkedConvert('feeAmount', (v) => MoneyAmount.fromJson(v)),
        netAmount: $checkedConvert('netAmount', (v) => MoneyAmount.fromJson(v)),
        createdAt: $checkedConvert('createdAt', (v) => ApiInstant.fromJson(v)),
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String?),
        expectedSettlementAt: $checkedConvert(
          'expectedSettlementAt',
          (v) => v == null ? null : ApiInstant.fromJson(v),
        ),
        description: $checkedConvert('description', (v) => v as String?),
        referenceType: $checkedConvert('referenceType', (v) => v as String?),
        referenceId: $checkedConvert('referenceId', (v) => v as String?),
        refundedMovementId: $checkedConvert('refundedMovementId', (v) => v as String?),
        createdBy: $checkedConvert('createdBy', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CashMovementToJson(CashMovement instance) => <String, dynamic>{
  'id': instance.id,
  'sessionId': instance.sessionId,
  'type': _$CashMovementTypeEnumMap[instance.type]!,
  'paymentMethodId': instance.paymentMethodId,
  'methodName': instance.methodName,
  'affectsCashDrawer': instance.affectsCashDrawer,
  'amount': instance.amount.toJson(),
  'feePercent': instance.feePercent.toJson(),
  'feeAmount': instance.feeAmount.toJson(),
  'netAmount': instance.netAmount.toJson(),
  'expectedSettlementAt': instance.expectedSettlementAt?.toJson(),
  'description': instance.description,
  'referenceType': instance.referenceType,
  'referenceId': instance.referenceId,
  'refundedMovementId': instance.refundedMovementId,
  'createdBy': instance.createdBy,
  'createdAt': instance.createdAt.toJson(),
};

const _$CashMovementJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'sessionId': {'type': 'string', 'description': 'Turno.'},
    'type': {'type': 'object', 'description': 'Natureza.'},
    'paymentMethodId': {'type': 'string', 'description': 'Forma, ou `null`.'},
    'methodName': {'type': 'string', 'description': 'Nome da forma no momento do lançamento.'},
    'affectsCashDrawer': {'type': 'boolean', 'description': 'Se afetou a gaveta.'},
    'amount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor. Positivo entra, negativo sai.',
    },
    'feePercent': {r'$ref': r'#/$defs/PercentAmount', 'description': 'Taxa percentual, escala 3.'},
    'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da taxa.'},
    'netAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Líquido (`amount` menos a taxa).',
    },
    'expectedSettlementAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Previsão de liquidação, ou `null`.',
    },
    'description': {'type': 'string', 'description': 'Descrição, ou `null`.'},
    'referenceType': {'type': 'string', 'description': 'Tipo da referência, ou `null`.'},
    'referenceId': {'type': 'string', 'description': 'Id da referência, ou `null`.'},
    'refundedMovementId': {'type': 'string', 'description': 'Movimento estornado, ou `null`.'},
    'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
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
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
    'ApiInstant': {'type': 'object', 'properties': {}},
  },
};

const _$CashMovementTypeEnumMap = {
  CashMovementType.sale: 'sale',
  CashMovementType.serviceOrder: 'service_order',
  CashMovementType.supply: 'supply',
  CashMovementType.withdrawal: 'withdrawal',
  CashMovementType.expense: 'expense',
  CashMovementType.refund: 'refund',
  CashMovementType.adjustment: 'adjustment',
};

CashSession _$CashSessionFromJson(Map<String, dynamic> json) => $checkedCreate(
  'CashSession',
  json,
  ($checkedConvert) {
    final val = CashSession(
      id: $checkedConvert('id', (v) => v as String),
      storeId: $checkedConvert('storeId', (v) => v as String),
      registerId: $checkedConvert('registerId', (v) => v as String),
      status: $checkedConvert('status', (v) => $enumDecode(_$CashSessionStatusEnumMap, v)),
      openedBy: $checkedConvert('openedBy', (v) => v as String),
      openedAt: $checkedConvert('openedAt', (v) => ApiInstant.fromJson(v)),
      openingAmount: $checkedConvert('openingAmount', (v) => MoneyAmount.fromJson(v)),
      movements: $checkedConvert(
        'movements',
        (v) => (v as List<dynamic>)
            .map((e) => CashMovement.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      closedBy: $checkedConvert('closedBy', (v) => v as String?),
      closedAt: $checkedConvert('closedAt', (v) => v == null ? null : ApiInstant.fromJson(v)),
      countedAmount: $checkedConvert(
        'countedAmount',
        (v) => v == null ? null : MoneyAmount.fromJson(v),
      ),
      expectedAmount: $checkedConvert(
        'expectedAmount',
        (v) => v == null ? null : MoneyAmount.fromJson(v),
      ),
      difference: $checkedConvert('difference', (v) => v == null ? null : MoneyAmount.fromJson(v)),
      closingNotes: $checkedConvert('closingNotes', (v) => v as String?),
    );
    return val;
  },
);

Map<String, dynamic> _$CashSessionToJson(CashSession instance) => <String, dynamic>{
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
    'openingAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Fundo de troco.'},
    'closedBy': {'type': 'string', 'description': 'Quem fechou, ou `null`.'},
    'closedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Fechamento, ou `null`.'},
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
    'closingNotes': {'type': 'string', 'description': 'Observação do fechamento, ou `null`.'},
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
    'ApiInstant': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
    'CashMovement': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'sessionId': {'type': 'string', 'description': 'Turno.'},
        'type': {'type': 'object', 'description': 'Natureza.'},
        'paymentMethodId': {'type': 'string', 'description': 'Forma, ou `null`.'},
        'methodName': {'type': 'string', 'description': 'Nome da forma no momento do lançamento.'},
        'affectsCashDrawer': {'type': 'boolean', 'description': 'Se afetou a gaveta.'},
        'amount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor. Positivo entra, negativo sai.',
        },
        'feePercent': {
          r'$ref': r'#/$defs/PercentAmount',
          'description': 'Taxa percentual, escala 3.',
        },
        'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da taxa.'},
        'netAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Líquido (`amount` menos a taxa).',
        },
        'expectedSettlementAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Previsão de liquidação, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição, ou `null`.'},
        'referenceType': {'type': 'string', 'description': 'Tipo da referência, ou `null`.'},
        'referenceId': {'type': 'string', 'description': 'Id da referência, ou `null`.'},
        'refundedMovementId': {'type': 'string', 'description': 'Movimento estornado, ou `null`.'},
        'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
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

CashMethodTotal _$CashMethodTotalFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CashMethodTotal', json, ($checkedConvert) {
      final val = CashMethodTotal(
        paymentMethodId: $checkedConvert('paymentMethodId', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$CashMethodTotalToJson(CashMethodTotal instance) => <String, dynamic>{
  'paymentMethodId': instance.paymentMethodId,
  'name': instance.name,
  'amount': instance.amount.toJson(),
};

const _$CashMethodTotalJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'paymentMethodId': {'type': 'string', 'description': 'Forma.'},
    'name': {'type': 'string', 'description': 'Nome da forma.'},
    'amount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma.'},
  },
  'required': ['paymentMethodId', 'name', 'amount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

CashSummary _$CashSummaryFromJson(Map<String, dynamic> json) => $checkedCreate(
  'CashSummary',
  json,
  ($checkedConvert) {
    final val = CashSummary(
      session: $checkedConvert('session', (v) => CashSession.fromJson(v as Map<String, dynamic>)),
      registerName: $checkedConvert('registerName', (v) => v as String),
      operatorName: $checkedConvert('operatorName', (v) => v as String),
      expectedCash: $checkedConvert('expectedCash', (v) => MoneyAmount.fromJson(v)),
      income: $checkedConvert('income', (v) => MoneyAmount.fromJson(v)),
      outgoing: $checkedConvert('outgoing', (v) => MoneyAmount.fromJson(v)),
      totalsByMethod: $checkedConvert(
        'totalsByMethod',
        (v) => (v as List<dynamic>)
            .map((e) => CashMethodTotal.fromJson(e as Map<String, dynamic>))
            .toList(),
      ),
      actorNames: $checkedConvert('actorNames', (v) => Map<String, String>.from(v as Map)),
      documentLabels: $checkedConvert('documentLabels', (v) => Map<String, String>.from(v as Map)),
    );
    return val;
  },
);

Map<String, dynamic> _$CashSummaryToJson(CashSummary instance) => <String, dynamic>{
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
    'expectedCash': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Gaveta esperada.'},
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
    'ApiInstant': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'PercentAmount': {'type': 'object', 'properties': {}},
    'CashMovement': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'sessionId': {'type': 'string', 'description': 'Turno.'},
        'type': {'type': 'object', 'description': 'Natureza.'},
        'paymentMethodId': {'type': 'string', 'description': 'Forma, ou `null`.'},
        'methodName': {'type': 'string', 'description': 'Nome da forma no momento do lançamento.'},
        'affectsCashDrawer': {'type': 'boolean', 'description': 'Se afetou a gaveta.'},
        'amount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor. Positivo entra, negativo sai.',
        },
        'feePercent': {
          r'$ref': r'#/$defs/PercentAmount',
          'description': 'Taxa percentual, escala 3.',
        },
        'feeAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor da taxa.'},
        'netAmount': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Líquido (`amount` menos a taxa).',
        },
        'expectedSettlementAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Previsão de liquidação, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição, ou `null`.'},
        'referenceType': {'type': 'string', 'description': 'Tipo da referência, ou `null`.'},
        'referenceId': {'type': 'string', 'description': 'Id da referência, ou `null`.'},
        'refundedMovementId': {'type': 'string', 'description': 'Movimento estornado, ou `null`.'},
        'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
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
        'openedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Abertura.'},
        'openingAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Fundo de troco.'},
        'closedBy': {'type': 'string', 'description': 'Quem fechou, ou `null`.'},
        'closedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Fechamento, ou `null`.'},
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
        'closingNotes': {'type': 'string', 'description': 'Observação do fechamento, ou `null`.'},
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

OpenCashSessionRequest _$OpenCashSessionRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OpenCashSessionRequest', json, ($checkedConvert) {
      final val = OpenCashSessionRequest(
        id: $checkedConvert('id', (v) => v as String),
        registerId: $checkedConvert('registerId', (v) => v as String),
        openingAmount: $checkedConvert('openingAmount', (v) => MoneyAmount.fromJson(v)),
      );
      return val;
    });

Map<String, dynamic> _$OpenCashSessionRequestToJson(OpenCashSessionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'registerId': instance.registerId,
      'openingAmount': instance.openingAmount.toJson(),
    };

const _$OpenCashSessionRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do turno. Também é a chave de idempotência.'},
    'registerId': {'type': 'string', 'description': 'Terminal.'},
    'openingAmount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Fundo de troco, maior ou igual a zero.',
    },
  },
  'required': ['id', 'registerId', 'openingAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

RecordCashMovementRequest _$RecordCashMovementRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('RecordCashMovementRequest', json, ($checkedConvert) {
      final val = RecordCashMovementRequest(
        id: $checkedConvert('id', (v) => v as String),
        type: $checkedConvert('type', (v) => $enumDecode(_$CashMovementTypeEnumMap, v)),
        amount: $checkedConvert('amount', (v) => MoneyAmount.fromJson(v)),
        reason: $checkedConvert('reason', (v) => v as String),
        direction: $checkedConvert(
          'direction',
          (v) => $enumDecodeNullable(_$CashAdjustmentDirectionEnumMap, v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$RecordCashMovementRequestToJson(RecordCashMovementRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$CashMovementTypeEnumMap[instance.type]!,
      'amount': instance.amount.toJson(),
      'reason': instance.reason,
      'direction': _$CashAdjustmentDirectionEnumMap[instance.direction],
    };

const _$RecordCashMovementRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do movimento. Também é a chave de idempotência.'},
    'type': {'type': 'object', 'description': '`supply`, `withdrawal`, `expense` ou `adjustment`.'},
    'amount': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor sempre positivo. O servidor aplica o sinal.',
    },
    'reason': {'type': 'string', 'description': 'Justificativa obrigatória.'},
    'direction': {
      'type': 'object',
      'description': 'Sentido do acerto. As outras naturezas ignoram.',
    },
  },
  'required': ['id', 'type', 'amount', 'reason'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

const _$CashAdjustmentDirectionEnumMap = {
  CashAdjustmentDirection.inward: 'in',
  CashAdjustmentDirection.outward: 'out',
};

CloseCashSessionRequest _$CloseCashSessionRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('CloseCashSessionRequest', json, ($checkedConvert) {
      final val = CloseCashSessionRequest(
        countedAmount: $checkedConvert('countedAmount', (v) => MoneyAmount.fromJson(v)),
        notes: $checkedConvert('notes', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$CloseCashSessionRequestToJson(CloseCashSessionRequest instance) =>
    <String, dynamic>{'countedAmount': instance.countedAmount.toJson(), 'notes': instance.notes};

const _$CloseCashSessionRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'countedAmount': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor contado na gaveta.'},
    'notes': {'type': 'string', 'description': 'Obrigatório quando o contado difere do esperado.'},
  },
  'required': ['countedAmount'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};
