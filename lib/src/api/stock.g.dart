// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks, unused_element, unnecessary_lambdas, inference_failure_on_collection_literal

part of 'stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StockBalance _$StockBalanceFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockBalance', json, ($checkedConvert) {
      final val = StockBalance(
        storeId: $checkedConvert('storeId', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        code: $checkedConvert('code', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
        minStock: $checkedConvert('minStock', (v) => (v as num).toInt()),
        needsRestock: $checkedConvert('needsRestock', (v) => v as bool),
      );
      return val;
    });

Map<String, dynamic> _$StockBalanceToJson(StockBalance instance) =>
    <String, dynamic>{
      'storeId': instance.storeId,
      'productId': instance.productId,
      'code': instance.code,
      'name': instance.name,
      'quantity': instance.quantity,
      'minStock': instance.minStock,
      'needsRestock': instance.needsRestock,
    };

const _$StockBalanceJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'productId': {'type': 'string', 'description': 'Produto.'},
    'code': {'type': 'string', 'description': 'Código interno.'},
    'name': {'type': 'string', 'description': 'Nome do produto.'},
    'quantity': {'type': 'integer', 'description': 'Saldo inteiro.'},
    'minStock': {'type': 'integer', 'description': 'Mínimo da loja.'},
    'needsRestock': {
      'type': 'boolean',
      'description':
          'Se o saldo está no mínimo ou abaixo. Calculado no servidor.',
    },
  },
  'required': [
    'storeId',
    'productId',
    'code',
    'name',
    'quantity',
    'minStock',
    'needsRestock',
  ],
};

StockMovement _$StockMovementFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockMovement', json, ($checkedConvert) {
      final val = StockMovement(
        id: $checkedConvert('id', (v) => v as String),
        storeId: $checkedConvert('storeId', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
        reason: $checkedConvert(
          'reason',
          (v) => $enumDecode(_$StockReasonEnumMap, v),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        unitCost: $checkedConvert(
          'unitCost',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
        referenceType: $checkedConvert('referenceType', (v) => v as String?),
        referenceId: $checkedConvert('referenceId', (v) => v as String?),
        notes: $checkedConvert('notes', (v) => v as String?),
        createdBy: $checkedConvert('createdBy', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StockMovementToJson(StockMovement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'productId': instance.productId,
      'quantity': instance.quantity,
      'reason': _$StockReasonEnumMap[instance.reason]!,
      'unitCost': instance.unitCost?.toJson(),
      'referenceType': instance.referenceType,
      'referenceId': instance.referenceId,
      'notes': instance.notes,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toJson(),
    };

const _$StockMovementJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'productId': {'type': 'string', 'description': 'Produto.'},
    'quantity': {
      'type': 'integer',
      'description': 'Quantidade inteira. Negativa sai.',
    },
    'reason': {'type': 'object', 'description': 'Motivo.'},
    'unitCost': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Custo unitário, ou `null`.',
    },
    'referenceType': {
      'type': 'string',
      'description': 'Tipo da referência, ou `null`.',
    },
    'referenceId': {
      'type': 'string',
      'description': 'Id da referência, ou `null`.',
    },
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'createdBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
  },
  'required': ['id', 'storeId', 'productId', 'quantity', 'reason', 'createdAt'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
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

const _$StockReasonEnumMap = {
  StockReason.purchase: 'purchase',
  StockReason.sale: 'sale',
  StockReason.serviceOrder: 'service_order',
  StockReason.adjustment: 'adjustment',
  StockReason.transferIn: 'transfer_in',
  StockReason.transferOut: 'transfer_out',
  StockReason.returnIn: 'return_in',
  StockReason.returnOut: 'return_out',
  StockReason.loss: 'loss',
};

StockAdjustmentItem _$StockAdjustmentItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockAdjustmentItem', json, ($checkedConvert) {
      final val = StockAdjustmentItem(
        productId: $checkedConvert('productId', (v) => v as String),
        countedQuantity: $checkedConvert(
          'countedQuantity',
          (v) => (v as num?)?.toInt(),
        ),
        delta: $checkedConvert('delta', (v) => (v as num?)?.toInt()),
        unitCost: $checkedConvert(
          'unitCost',
          (v) => v == null ? null : MoneyAmount.fromJson(v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$StockAdjustmentItemToJson(
  StockAdjustmentItem instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'countedQuantity': instance.countedQuantity,
  'delta': instance.delta,
  'unitCost': instance.unitCost?.toJson(),
};

const _$StockAdjustmentItemJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'productId': {'type': 'string', 'description': 'Produto.'},
    'countedQuantity': {
      'type': 'integer',
      'description': 'Saldo contado. Exclusivo com [delta].',
    },
    'delta': {
      'type': 'integer',
      'description': 'Movimento direto, diferente de zero. Exclusivo com [countedQuantity].',
    },
    'unitCost': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Custo da entrada, ou `null`.',
    },
  },
  'required': ['productId'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

StockAdjustmentRequest _$StockAdjustmentRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StockAdjustmentRequest', json, ($checkedConvert) {
  final val = StockAdjustmentRequest(
    operationId: $checkedConvert('operationId', (v) => v as String),
    reason: $checkedConvert(
      'reason',
      (v) => $enumDecode(_$StockReasonEnumMap, v),
    ),
    notes: $checkedConvert('notes', (v) => v as String),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => StockAdjustmentItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
  );
  return val;
});

Map<String, dynamic> _$StockAdjustmentRequestToJson(
  StockAdjustmentRequest instance,
) => <String, dynamic>{
  'operationId': instance.operationId,
  'reason': _$StockReasonEnumMap[instance.reason]!,
  'notes': instance.notes,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

const _$StockAdjustmentRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'operationId': {'type': 'string', 'description': 'Chave de idempotência.'},
    'reason': {
      'type': 'object',
      'description': '`adjustment`, `loss` ou `purchase`.',
    },
    'notes': {'type': 'string', 'description': 'Justificativa obrigatória.'},
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/StockAdjustmentItem'},
      'description': 'Itens do ajuste.',
    },
  },
  'required': ['operationId', 'reason', 'notes', 'items'],
  r'$defs': {
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'StockAdjustmentItem': {
      'type': 'object',
      'properties': {
        'productId': {'type': 'string', 'description': 'Produto.'},
        'countedQuantity': {
          'type': 'integer',
          'description': 'Saldo contado. Exclusivo com [delta].',
        },
        'delta': {
          'type': 'integer',
          'description': 'Movimento direto, diferente de zero. Exclusivo com [countedQuantity].',
        },
        'unitCost': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Custo da entrada, ou `null`.',
        },
      },
      'required': ['productId'],
    },
  },
};

StockTransferItem _$StockTransferItemFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockTransferItem', json, ($checkedConvert) {
      final val = StockTransferItem(
        id: $checkedConvert('id', (v) => v as String),
        productId: $checkedConvert('productId', (v) => v as String),
        quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
      );
      return val;
    });

Map<String, dynamic> _$StockTransferItemToJson(StockTransferItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productId': instance.productId,
      'quantity': instance.quantity,
    };

const _$StockTransferItemJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Produto.'},
    'quantity': {
      'type': 'integer',
      'description': 'Quantidade inteira positiva.',
    },
  },
  'required': ['id', 'productId', 'quantity'],
};

StockTransfer _$StockTransferFromJson(Map<String, dynamic> json) =>
    $checkedCreate('StockTransfer', json, ($checkedConvert) {
      final val = StockTransfer(
        id: $checkedConvert('id', (v) => v as String),
        originStoreId: $checkedConvert('originStoreId', (v) => v as String),
        targetStoreId: $checkedConvert('targetStoreId', (v) => v as String),
        status: $checkedConvert(
          'status',
          (v) => $enumDecode(_$StockTransferStatusEnumMap, v),
        ),
        items: $checkedConvert(
          'items',
          (v) => (v as List<dynamic>)
              .map((e) => StockTransferItem.fromJson(e as Map<String, dynamic>))
              .toList(),
        ),
        createdAt: $checkedConvert(
          'createdAt',
          (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        notes: $checkedConvert('notes', (v) => v as String?),
        createdBy: $checkedConvert('createdBy', (v) => v as String?),
        receivedBy: $checkedConvert('receivedBy', (v) => v as String?),
        receivedAt: $checkedConvert(
          'receivedAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        cancelledBy: $checkedConvert('cancelledBy', (v) => v as String?),
        cancelledAt: $checkedConvert(
          'cancelledAt',
          (v) =>
              v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
        ),
        cancelReason: $checkedConvert('cancelReason', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$StockTransferToJson(StockTransfer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originStoreId': instance.originStoreId,
      'targetStoreId': instance.targetStoreId,
      'status': _$StockTransferStatusEnumMap[instance.status]!,
      'notes': instance.notes,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'createdBy': instance.createdBy,
      'receivedBy': instance.receivedBy,
      'createdAt': instance.createdAt.toJson(),
      'receivedAt': instance.receivedAt?.toJson(),
      'cancelledBy': instance.cancelledBy,
      'cancelledAt': instance.cancelledAt?.toJson(),
      'cancelReason': instance.cancelReason,
    };

const _$StockTransferJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'originStoreId': {'type': 'string', 'description': 'Loja de origem.'},
    'targetStoreId': {'type': 'string', 'description': 'Loja de destino.'},
    'status': {'type': 'object', 'description': 'Situação.'},
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/StockTransferItem'},
      'description': 'Itens.',
    },
    'createdBy': {
      'type': 'string',
      'description': 'Autor da criação, ou `null`.',
    },
    'receivedBy': {'type': 'string', 'description': 'Quem recebeu, ou `null`.'},
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
    'receivedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Recebimento, ou `null`.',
    },
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
  },
  'required': [
    'id',
    'originStoreId',
    'targetStoreId',
    'status',
    'items',
    'createdAt',
  ],
  r'$defs': {
    'StockTransferItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Produto.'},
        'quantity': {
          'type': 'integer',
          'description': 'Quantidade inteira positiva.',
        },
      },
      'required': ['id', 'productId', 'quantity'],
    },
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

const _$StockTransferStatusEnumMap = {
  StockTransferStatus.pending: 'pending',
  StockTransferStatus.received: 'received',
  StockTransferStatus.cancelled: 'cancelled',
};

StockTransferItemRequest _$StockTransferItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('StockTransferItemRequest', json, ($checkedConvert) {
  final val = StockTransferItemRequest(
    productId: $checkedConvert('productId', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => (v as num).toInt()),
  );
  return val;
});

Map<String, dynamic> _$StockTransferItemRequestToJson(
  StockTransferItemRequest instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'quantity': instance.quantity,
};

const _$StockTransferItemRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'productId': {'type': 'string', 'description': 'Produto.'},
    'quantity': {
      'type': 'integer',
      'description': 'Quantidade inteira positiva.',
    },
  },
  'required': ['productId', 'quantity'],
};

CreateStockTransferRequest _$CreateStockTransferRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CreateStockTransferRequest', json, ($checkedConvert) {
  final val = CreateStockTransferRequest(
    id: $checkedConvert('id', (v) => v as String),
    targetStoreId: $checkedConvert('targetStoreId', (v) => v as String),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map(
            (e) => StockTransferItemRequest.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    ),
    notes: $checkedConvert('notes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$CreateStockTransferRequestToJson(
  CreateStockTransferRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'targetStoreId': instance.targetStoreId,
  'notes': instance.notes,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

const _$CreateStockTransferRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {
      'type': 'string',
      'description': 'UUID da transferência, gerado pelo app.',
    },
    'targetStoreId': {
      'type': 'string',
      'description': 'Loja de destino. A origem é o `{storeId}` do caminho.',
    },
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/StockTransferItemRequest'},
      'description': 'Itens.',
    },
  },
  'required': ['id', 'targetStoreId', 'items'],
  r'$defs': {
    'StockTransferItemRequest': {
      'type': 'object',
      'properties': {
        'productId': {'type': 'string', 'description': 'Produto.'},
        'quantity': {
          'type': 'integer',
          'description': 'Quantidade inteira positiva.',
        },
      },
      'required': ['productId', 'quantity'],
    },
  },
};

CancelStockTransferRequest _$CancelStockTransferRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CancelStockTransferRequest', json, ($checkedConvert) {
  final val = CancelStockTransferRequest(
    reason: $checkedConvert('reason', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CancelStockTransferRequestToJson(
  CancelStockTransferRequest instance,
) => <String, dynamic>{'reason': instance.reason};

const _$CancelStockTransferRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'reason': {'type': 'string', 'description': 'Motivo.'},
  },
  'required': ['reason'],
};
