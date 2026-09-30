// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'service_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceEntryCondition _$DeviceEntryConditionFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DeviceEntryCondition', json, ($checkedConvert) {
  final val = DeviceEntryCondition(
    screenCracked: $checkedConvert('screenCracked', (v) => v as bool),
    touchWorking: $checkedConvert('touchWorking', (v) => v as bool),
    housingDamaged: $checkedConvert('housingDamaged', (v) => v as bool),
    waterDamage: $checkedConvert('waterDamage', (v) => v as bool),
    batterySwollen: $checkedConvert('batterySwollen', (v) => v as bool),
    buttonsWorking: $checkedConvert('buttonsWorking', (v) => v as bool),
    cameraWorking: $checkedConvert('cameraWorking', (v) => v as bool),
    chargingWorking: $checkedConvert('chargingWorking', (v) => v as bool),
    notes: $checkedConvert('notes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$DeviceEntryConditionToJson(
  DeviceEntryCondition instance,
) => <String, dynamic>{
  'screenCracked': instance.screenCracked,
  'touchWorking': instance.touchWorking,
  'housingDamaged': instance.housingDamaged,
  'waterDamage': instance.waterDamage,
  'batterySwollen': instance.batterySwollen,
  'buttonsWorking': instance.buttonsWorking,
  'cameraWorking': instance.cameraWorking,
  'chargingWorking': instance.chargingWorking,
  'notes': instance.notes,
};

const _$DeviceEntryConditionJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'screenCracked': {
      'type': 'boolean',
      'description': 'Se a tela está trincada.',
    },
    'touchWorking': {'type': 'boolean', 'description': 'Se o toque funciona.'},
    'housingDamaged': {
      'type': 'boolean',
      'description': 'Se a carcaça está danificada.',
    },
    'waterDamage': {
      'type': 'boolean',
      'description': 'Se há dano por líquido.',
    },
    'batterySwollen': {
      'type': 'boolean',
      'description': 'Se a bateria está inchada.',
    },
    'buttonsWorking': {
      'type': 'boolean',
      'description': 'Se os botões funcionam.',
    },
    'cameraWorking': {
      'type': 'boolean',
      'description': 'Se a câmera funciona.',
    },
    'chargingWorking': {
      'type': 'boolean',
      'description': 'Se a carga funciona.',
    },
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
  },
  'required': [
    'screenCracked',
    'touchWorking',
    'housingDamaged',
    'waterDamage',
    'batterySwollen',
    'buttonsWorking',
    'cameraWorking',
    'chargingWorking',
  ],
};

ServiceOrderItem _$ServiceOrderItemFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ServiceOrderItem', json, ($checkedConvert) {
  final val = ServiceOrderItem(
    id: $checkedConvert('id', (v) => v as String),
    serviceOrderId: $checkedConvert('serviceOrderId', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
    unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
    totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
    createdAt: $checkedConvert(
      'createdAt',
      (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    productId: $checkedConvert('productId', (v) => v as String?),
    serviceId: $checkedConvert('serviceId', (v) => v as String?),
    unitCost: $checkedConvert(
      'unitCost',
      (v) => v == null ? null : MoneyAmount.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$ServiceOrderItemToJson(ServiceOrderItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'serviceOrderId': instance.serviceOrderId,
      'productId': instance.productId,
      'serviceId': instance.serviceId,
      'description': instance.description,
      'quantity': instance.quantity.toJson(),
      'unitPrice': instance.unitPrice.toJson(),
      'unitCost': instance.unitCost?.toJson(),
      'totalValue': instance.totalValue.toJson(),
      'createdAt': instance.createdAt.toJson(),
    };

const _$ServiceOrderItemJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'serviceOrderId': {'type': 'string', 'description': 'Ordem dona do item.'},
    'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
    'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
    'description': {'type': 'string', 'description': 'Descrição.'},
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
      'description': 'Custo unitário, ou `null`.',
    },
    'totalValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Total calculado.',
    },
    'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Inclusão.'},
  },
  'required': [
    'id',
    'serviceOrderId',
    'description',
    'quantity',
    'unitPrice',
    'totalValue',
    'createdAt',
  ],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
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

ServiceOrder _$ServiceOrderFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ServiceOrder', json, ($checkedConvert) {
  final val = ServiceOrder(
    id: $checkedConvert('id', (v) => v as String),
    storeId: $checkedConvert('storeId', (v) => v as String),
    number: $checkedConvert('number', (v) => (v as num).toInt()),
    customerId: $checkedConvert('customerId', (v) => v as String),
    deviceId: $checkedConvert('deviceId', (v) => v as String),
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ServiceOrderStatusEnumMap, v),
    ),
    reportedIssue: $checkedConvert('reportedIssue', (v) => v as String),
    hasBackup: $checkedConvert('hasBackup', (v) => v as bool),
    totalValue: $checkedConvert('totalValue', (v) => MoneyAmount.fromJson(v)),
    partsTotal: $checkedConvert('partsTotal', (v) => MoneyAmount.fromJson(v)),
    laborTotal: $checkedConvert('laborTotal', (v) => MoneyAmount.fromJson(v)),
    warrantyDays: $checkedConvert('warrantyDays', (v) => (v as num).toInt()),
    isOverdue: $checkedConvert('isOverdue', (v) => v as bool),
    isUnderWarranty: $checkedConvert('isUnderWarranty', (v) => v as bool),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => ServiceOrderItem.fromJson(e as Map<String, dynamic>))
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
    technicianId: $checkedConvert('technicianId', (v) => v as String?),
    accessories: $checkedConvert('accessories', (v) => v as String?),
    deviceCondition: $checkedConvert(
      'deviceCondition',
      (v) => v == null
          ? null
          : DeviceEntryCondition.fromJson(v as Map<String, dynamic>),
    ),
    unlockCode: $checkedConvert('unlockCode', (v) => v as String?),
    diagnosis: $checkedConvert('diagnosis', (v) => v as String?),
    quoteValue: $checkedConvert(
      'quoteValue',
      (v) => v == null ? null : MoneyAmount.fromJson(v),
    ),
    quoteSentAt: $checkedConvert(
      'quoteSentAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    approvedAt: $checkedConvert(
      'approvedAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    approvedByName: $checkedConvert('approvedByName', (v) => v as String?),
    rejectionReason: $checkedConvert('rejectionReason', (v) => v as String?),
    promisedDate: $checkedConvert(
      'promisedDate',
      (v) => v == null ? null : CalendarDate.fromJson(v),
    ),
    repairNotes: $checkedConvert('repairNotes', (v) => v as String?),
    deliveredAt: $checkedConvert(
      'deliveredAt',
      (v) => v == null ? null : ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    deliveredToName: $checkedConvert('deliveredToName', (v) => v as String?),
    warrantyExpiresAt: $checkedConvert(
      'warrantyExpiresAt',
      (v) => v == null ? null : CalendarDate.fromJson(v),
    ),
    invoiceId: $checkedConvert('invoiceId', (v) => v as String?),
    createdBy: $checkedConvert('createdBy', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ServiceOrderToJson(ServiceOrder instance) =>
    <String, dynamic>{
      'id': instance.id,
      'storeId': instance.storeId,
      'number': instance.number,
      'customerId': instance.customerId,
      'deviceId': instance.deviceId,
      'status': _$ServiceOrderStatusEnumMap[instance.status]!,
      'technicianId': instance.technicianId,
      'reportedIssue': instance.reportedIssue,
      'accessories': instance.accessories,
      'deviceCondition': instance.deviceCondition?.toJson(),
      'unlockCode': instance.unlockCode,
      'hasBackup': instance.hasBackup,
      'diagnosis': instance.diagnosis,
      'quoteValue': instance.quoteValue?.toJson(),
      'quoteSentAt': instance.quoteSentAt?.toJson(),
      'approvedAt': instance.approvedAt?.toJson(),
      'approvedByName': instance.approvedByName,
      'rejectionReason': instance.rejectionReason,
      'promisedDate': instance.promisedDate?.toJson(),
      'repairNotes': instance.repairNotes,
      'totalValue': instance.totalValue.toJson(),
      'partsTotal': instance.partsTotal.toJson(),
      'laborTotal': instance.laborTotal.toJson(),
      'warrantyDays': instance.warrantyDays,
      'deliveredAt': instance.deliveredAt?.toJson(),
      'deliveredToName': instance.deliveredToName,
      'warrantyExpiresAt': instance.warrantyExpiresAt?.toJson(),
      'invoiceId': instance.invoiceId,
      'isOverdue': instance.isOverdue,
      'isUnderWarranty': instance.isUnderWarranty,
      'items': instance.items.map((e) => e.toJson()).toList(),
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt.toJson(),
      'updatedAt': instance.updatedAt.toJson(),
    };

const _$ServiceOrderJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'storeId': {'type': 'string', 'description': 'Loja.'},
    'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
    'customerId': {'type': 'string', 'description': 'Cliente.'},
    'deviceId': {'type': 'string', 'description': 'Aparelho.'},
    'status': {'type': 'object', 'description': 'Situação.'},
    'technicianId': {'type': 'string', 'description': 'Técnico, ou `null`.'},
    'reportedIssue': {'type': 'string', 'description': 'Defeito relatado.'},
    'accessories': {'type': 'string', 'description': 'Acessórios, ou `null`.'},
    'deviceCondition': {
      r'$ref': r'#/$defs/DeviceEntryCondition',
      'description': 'Checklist de entrada, ou `null`.',
    },
    'unlockCode': {
      'type': 'string',
      'description': 'Senha ou padrão. `null` na listagem e sem a permissão de atualização.',
    },
    'hasBackup': {'type': 'boolean', 'description': 'Se foi feito backup.'},
    'diagnosis': {'type': 'string', 'description': 'Diagnóstico, ou `null`.'},
    'quoteValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Valor orçado, ou `null`.',
    },
    'quoteSentAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Envio do orçamento, ou `null`.',
    },
    'approvedAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Aprovação, ou `null`.',
    },
    'approvedByName': {
      'type': 'string',
      'description': 'Quem autorizou pelo cliente, ou `null`.',
    },
    'rejectionReason': {
      'type': 'string',
      'description': 'Motivo da recusa, ou `null`.',
    },
    'promisedDate': {
      r'$ref': r'#/$defs/CalendarDate',
      'description': 'Prazo prometido, ou `null`.',
    },
    'repairNotes': {
      'type': 'string',
      'description': 'Notas de execução, ou `null`.',
    },
    'totalValue': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma dos itens.',
    },
    'partsTotal': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma das peças.',
    },
    'laborTotal': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Soma da mão de obra.',
    },
    'warrantyDays': {'type': 'integer', 'description': 'Garantia em dias.'},
    'deliveredAt': {
      r'$ref': r'#/$defs/ApiInstant',
      'description': 'Entrega, ou `null`.',
    },
    'deliveredToName': {
      'type': 'string',
      'description': 'Quem retirou, ou `null`.',
    },
    'warrantyExpiresAt': {
      r'$ref': r'#/$defs/CalendarDate',
      'description': 'Fim da garantia, ou `null`.',
    },
    'invoiceId': {
      'type': 'string',
      'description': 'Nota gerada na entrega, ou `null`.',
    },
    'isOverdue': {
      'type': 'boolean',
      'description': 'Se o prazo estourou e a ordem segue aberta.',
    },
    'isUnderWarranty': {
      'type': 'boolean',
      'description': 'Se a garantia ainda vale.',
    },
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/ServiceOrderItem'},
      'description': 'Itens. Lista vazia na fila.',
    },
    'createdBy': {
      'type': 'string',
      'description': 'Autor da abertura, ou `null`.',
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
    'customerId',
    'deviceId',
    'status',
    'reportedIssue',
    'hasBackup',
    'totalValue',
    'partsTotal',
    'laborTotal',
    'warrantyDays',
    'isOverdue',
    'isUnderWarranty',
    'items',
    'createdAt',
    'updatedAt',
  ],
  r'$defs': {
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {
          'type': 'boolean',
          'description': 'Se a tela está trincada.',
        },
        'touchWorking': {
          'type': 'boolean',
          'description': 'Se o toque funciona.',
        },
        'housingDamaged': {
          'type': 'boolean',
          'description': 'Se a carcaça está danificada.',
        },
        'waterDamage': {
          'type': 'boolean',
          'description': 'Se há dano por líquido.',
        },
        'batterySwollen': {
          'type': 'boolean',
          'description': 'Se a bateria está inchada.',
        },
        'buttonsWorking': {
          'type': 'boolean',
          'description': 'Se os botões funcionam.',
        },
        'cameraWorking': {
          'type': 'boolean',
          'description': 'Se a câmera funciona.',
        },
        'chargingWorking': {
          'type': 'boolean',
          'description': 'Se a carga funciona.',
        },
        'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
      },
      'required': [
        'screenCracked',
        'touchWorking',
        'housingDamaged',
        'waterDamage',
        'batterySwollen',
        'buttonsWorking',
        'cameraWorking',
        'chargingWorking',
      ],
    },
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
    'CalendarDate': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ServiceOrderItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'serviceOrderId': {
          'type': 'string',
          'description': 'Ordem dona do item.',
        },
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição.'},
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
          'description': 'Custo unitário, ou `null`.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total calculado.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Inclusão.',
        },
      },
      'required': [
        'id',
        'serviceOrderId',
        'description',
        'quantity',
        'unitPrice',
        'totalValue',
        'createdAt',
      ],
    },
  },
};

const _$ServiceOrderStatusEnumMap = {
  ServiceOrderStatus.received: 'received',
  ServiceOrderStatus.inDiagnosis: 'in_diagnosis',
  ServiceOrderStatus.awaitingApproval: 'awaiting_approval',
  ServiceOrderStatus.approved: 'approved',
  ServiceOrderStatus.rejected: 'rejected',
  ServiceOrderStatus.awaitingParts: 'awaiting_parts',
  ServiceOrderStatus.inRepair: 'in_repair',
  ServiceOrderStatus.ready: 'ready',
  ServiceOrderStatus.delivered: 'delivered',
  ServiceOrderStatus.cancelled: 'cancelled',
  ServiceOrderStatus.returnedUnrepaired: 'returned_unrepaired',
};

ServiceOrderCustomer _$ServiceOrderCustomerFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ServiceOrderCustomer', json, ($checkedConvert) {
  final val = ServiceOrderCustomer(
    id: $checkedConvert('id', (v) => v as String),
    name: $checkedConvert('name', (v) => v as String),
    phone: $checkedConvert('phone', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ServiceOrderCustomerToJson(
  ServiceOrderCustomer instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'phone': instance.phone,
};

const _$ServiceOrderCustomerJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'name': {'type': 'string', 'description': 'Nome.'},
    'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
  },
  'required': ['id', 'name'],
};

ServiceOrderListing _$ServiceOrderListingFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ServiceOrderListing', json, ($checkedConvert) {
      final val = ServiceOrderListing(
        order: $checkedConvert(
          'order',
          (v) => ServiceOrder.fromJson(v as Map<String, dynamic>),
        ),
        customer: $checkedConvert(
          'customer',
          (v) => ServiceOrderCustomer.fromJson(v as Map<String, dynamic>),
        ),
        device: $checkedConvert(
          'device',
          (v) => Device.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ServiceOrderListingToJson(
  ServiceOrderListing instance,
) => <String, dynamic>{
  'order': instance.order.toJson(),
  'customer': instance.customer.toJson(),
  'device': instance.device.toJson(),
};

const _$ServiceOrderListingJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'order': {
      r'$ref': r'#/$defs/ServiceOrder',
      'description': 'Ordem sem itens e sem senha.',
    },
    'customer': {
      r'$ref': r'#/$defs/ServiceOrderCustomer',
      'description': 'Cliente.',
    },
    'device': {r'$ref': r'#/$defs/Device', 'description': 'Aparelho.'},
  },
  'required': ['order', 'customer', 'device'],
  r'$defs': {
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {
          'type': 'boolean',
          'description': 'Se a tela está trincada.',
        },
        'touchWorking': {
          'type': 'boolean',
          'description': 'Se o toque funciona.',
        },
        'housingDamaged': {
          'type': 'boolean',
          'description': 'Se a carcaça está danificada.',
        },
        'waterDamage': {
          'type': 'boolean',
          'description': 'Se há dano por líquido.',
        },
        'batterySwollen': {
          'type': 'boolean',
          'description': 'Se a bateria está inchada.',
        },
        'buttonsWorking': {
          'type': 'boolean',
          'description': 'Se os botões funcionam.',
        },
        'cameraWorking': {
          'type': 'boolean',
          'description': 'Se a câmera funciona.',
        },
        'chargingWorking': {
          'type': 'boolean',
          'description': 'Se a carga funciona.',
        },
        'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
      },
      'required': [
        'screenCracked',
        'touchWorking',
        'housingDamaged',
        'waterDamage',
        'batterySwollen',
        'buttonsWorking',
        'cameraWorking',
        'chargingWorking',
      ],
    },
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
    'CalendarDate': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ServiceOrderItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'serviceOrderId': {
          'type': 'string',
          'description': 'Ordem dona do item.',
        },
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição.'},
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
          'description': 'Custo unitário, ou `null`.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total calculado.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Inclusão.',
        },
      },
      'required': [
        'id',
        'serviceOrderId',
        'description',
        'quantity',
        'unitPrice',
        'totalValue',
        'createdAt',
      ],
    },
    'ServiceOrder': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
        'customerId': {'type': 'string', 'description': 'Cliente.'},
        'deviceId': {'type': 'string', 'description': 'Aparelho.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'technicianId': {
          'type': 'string',
          'description': 'Técnico, ou `null`.',
        },
        'reportedIssue': {'type': 'string', 'description': 'Defeito relatado.'},
        'accessories': {
          'type': 'string',
          'description': 'Acessórios, ou `null`.',
        },
        'deviceCondition': {
          r'$ref': r'#/$defs/DeviceEntryCondition',
          'description': 'Checklist de entrada, ou `null`.',
        },
        'unlockCode': {
          'type': 'string',
          'description': 'Senha ou padrão. `null` na listagem e sem a permissão de atualização.',
        },
        'hasBackup': {'type': 'boolean', 'description': 'Se foi feito backup.'},
        'diagnosis': {
          'type': 'string',
          'description': 'Diagnóstico, ou `null`.',
        },
        'quoteValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor orçado, ou `null`.',
        },
        'quoteSentAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Envio do orçamento, ou `null`.',
        },
        'approvedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Aprovação, ou `null`.',
        },
        'approvedByName': {
          'type': 'string',
          'description': 'Quem autorizou pelo cliente, ou `null`.',
        },
        'rejectionReason': {
          'type': 'string',
          'description': 'Motivo da recusa, ou `null`.',
        },
        'promisedDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Prazo prometido, ou `null`.',
        },
        'repairNotes': {
          'type': 'string',
          'description': 'Notas de execução, ou `null`.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma dos itens.',
        },
        'partsTotal': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma das peças.',
        },
        'laborTotal': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma da mão de obra.',
        },
        'warrantyDays': {'type': 'integer', 'description': 'Garantia em dias.'},
        'deliveredAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Entrega, ou `null`.',
        },
        'deliveredToName': {
          'type': 'string',
          'description': 'Quem retirou, ou `null`.',
        },
        'warrantyExpiresAt': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Fim da garantia, ou `null`.',
        },
        'invoiceId': {
          'type': 'string',
          'description': 'Nota gerada na entrega, ou `null`.',
        },
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se o prazo estourou e a ordem segue aberta.',
        },
        'isUnderWarranty': {
          'type': 'boolean',
          'description': 'Se a garantia ainda vale.',
        },
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/ServiceOrderItem'},
          'description': 'Itens. Lista vazia na fila.',
        },
        'createdBy': {
          'type': 'string',
          'description': 'Autor da abertura, ou `null`.',
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
        'customerId',
        'deviceId',
        'status',
        'reportedIssue',
        'hasBackup',
        'totalValue',
        'partsTotal',
        'laborTotal',
        'warrantyDays',
        'isOverdue',
        'isUnderWarranty',
        'items',
        'createdAt',
        'updatedAt',
      ],
    },
    'ServiceOrderCustomer': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'name': {'type': 'string', 'description': 'Nome.'},
        'phone': {'type': 'string', 'description': 'Telefone, ou `null`.'},
      },
      'required': ['id', 'name'],
    },
    'Device': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'UUID. Opcional no corpo; obrigatório na resposta.',
        },
        'customerId': {'type': 'string', 'description': 'Dono do aparelho.'},
        'brand': {'type': 'string', 'description': 'Marca.'},
        'model': {'type': 'string', 'description': 'Modelo.'},
        'color': {'type': 'string', 'description': 'Cor, ou `null`.'},
        'imei': {'type': 'string', 'description': 'IMEI, ou `null`.'},
        'serialNumber': {
          'type': 'string',
          'description': 'Número de série, ou `null`.',
        },
        'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação, ou `null` no corpo de escrita.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração, ou `null` no corpo de escrita.',
        },
      },
      'required': ['customerId', 'brand', 'model'],
    },
  },
};

ServiceOrderStatusChange _$ServiceOrderStatusChangeFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ServiceOrderStatusChange', json, ($checkedConvert) {
  final val = ServiceOrderStatusChange(
    id: $checkedConvert('id', (v) => v as String),
    serviceOrderId: $checkedConvert('serviceOrderId', (v) => v as String),
    toStatus: $checkedConvert(
      'toStatus',
      (v) => $enumDecode(_$ServiceOrderStatusEnumMap, v),
    ),
    changedAt: $checkedConvert(
      'changedAt',
      (v) => ApiInstant.fromJson(v as Map<String, dynamic>),
    ),
    fromStatus: $checkedConvert(
      'fromStatus',
      (v) => $enumDecodeNullable(_$ServiceOrderStatusEnumMap, v),
    ),
    notes: $checkedConvert('notes', (v) => v as String?),
    changedBy: $checkedConvert('changedBy', (v) => v as String?),
    changedByName: $checkedConvert('changedByName', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ServiceOrderStatusChangeToJson(
  ServiceOrderStatusChange instance,
) => <String, dynamic>{
  'id': instance.id,
  'serviceOrderId': instance.serviceOrderId,
  'fromStatus': _$ServiceOrderStatusEnumMap[instance.fromStatus],
  'toStatus': _$ServiceOrderStatusEnumMap[instance.toStatus]!,
  'notes': instance.notes,
  'changedBy': instance.changedBy,
  'changedByName': instance.changedByName,
  'changedAt': instance.changedAt.toJson(),
};

const _$ServiceOrderStatusChangeJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID.'},
    'serviceOrderId': {'type': 'string', 'description': 'Ordem.'},
    'fromStatus': {
      'type': 'object',
      'description': 'Status anterior. `null` na abertura.',
    },
    'toStatus': {'type': 'object', 'description': 'Novo status.'},
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
    'changedBy': {'type': 'string', 'description': 'Autor, ou `null`.'},
    'changedByName': {
      'type': 'string',
      'description': 'Nome do autor, ou `null`.',
    },
    'changedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Momento.'},
  },
  'required': ['id', 'serviceOrderId', 'toStatus', 'changedAt'],
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
  },
};

OpenServiceOrderRequest _$OpenServiceOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('OpenServiceOrderRequest', json, ($checkedConvert) {
  final val = OpenServiceOrderRequest(
    id: $checkedConvert('id', (v) => v as String),
    customerId: $checkedConvert('customerId', (v) => v as String),
    device: $checkedConvert(
      'device',
      (v) => Device.fromJson(v as Map<String, dynamic>),
    ),
    reportedIssue: $checkedConvert('reportedIssue', (v) => v as String),
    hasBackup: $checkedConvert('hasBackup', (v) => v as bool),
    accessories: $checkedConvert('accessories', (v) => v as String?),
    deviceCondition: $checkedConvert(
      'deviceCondition',
      (v) => v == null
          ? null
          : DeviceEntryCondition.fromJson(v as Map<String, dynamic>),
    ),
    unlockCode: $checkedConvert('unlockCode', (v) => v as String?),
    promisedDate: $checkedConvert(
      'promisedDate',
      (v) => v == null ? null : CalendarDate.fromJson(v),
    ),
  );
  return val;
});

Map<String, dynamic> _$OpenServiceOrderRequestToJson(
  OpenServiceOrderRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'customerId': instance.customerId,
  'device': instance.device.toJson(),
  'reportedIssue': instance.reportedIssue,
  'accessories': instance.accessories,
  'deviceCondition': instance.deviceCondition?.toJson(),
  'unlockCode': instance.unlockCode,
  'hasBackup': instance.hasBackup,
  'promisedDate': instance.promisedDate?.toJson(),
};

const _$OpenServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID da ordem.'},
    'customerId': {'type': 'string', 'description': 'Cliente.'},
    'device': {
      r'$ref': r'#/$defs/Device',
      'description': 'Aparelho. Gravado por upsert do `device.id`.',
    },
    'reportedIssue': {'type': 'string', 'description': 'Defeito relatado.'},
    'accessories': {'type': 'string', 'description': 'Acessórios, ou `null`.'},
    'deviceCondition': {
      r'$ref': r'#/$defs/DeviceEntryCondition',
      'description': 'Checklist, ou `null`.',
    },
    'unlockCode': {
      'type': 'string',
      'description': 'Senha ou padrão, ou `null`.',
    },
    'hasBackup': {'type': 'boolean', 'description': 'Se foi feito backup.'},
    'promisedDate': {
      r'$ref': r'#/$defs/CalendarDate',
      'description': 'Prazo prometido, ou `null`.',
    },
  },
  'required': ['id', 'customerId', 'device', 'reportedIssue', 'hasBackup'],
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
    'Device': {
      'type': 'object',
      'properties': {
        'id': {
          'type': 'string',
          'description': 'UUID. Opcional no corpo; obrigatório na resposta.',
        },
        'customerId': {'type': 'string', 'description': 'Dono do aparelho.'},
        'brand': {'type': 'string', 'description': 'Marca.'},
        'model': {'type': 'string', 'description': 'Modelo.'},
        'color': {'type': 'string', 'description': 'Cor, ou `null`.'},
        'imei': {'type': 'string', 'description': 'IMEI, ou `null`.'},
        'serialNumber': {
          'type': 'string',
          'description': 'Número de série, ou `null`.',
        },
        'notes': {'type': 'string', 'description': 'Observações, ou `null`.'},
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Criação, ou `null` no corpo de escrita.',
        },
        'updatedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Última alteração, ou `null` no corpo de escrita.',
        },
      },
      'required': ['customerId', 'brand', 'model'],
    },
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {
          'type': 'boolean',
          'description': 'Se a tela está trincada.',
        },
        'touchWorking': {
          'type': 'boolean',
          'description': 'Se o toque funciona.',
        },
        'housingDamaged': {
          'type': 'boolean',
          'description': 'Se a carcaça está danificada.',
        },
        'waterDamage': {
          'type': 'boolean',
          'description': 'Se há dano por líquido.',
        },
        'batterySwollen': {
          'type': 'boolean',
          'description': 'Se a bateria está inchada.',
        },
        'buttonsWorking': {
          'type': 'boolean',
          'description': 'Se os botões funcionam.',
        },
        'cameraWorking': {
          'type': 'boolean',
          'description': 'Se a câmera funciona.',
        },
        'chargingWorking': {
          'type': 'boolean',
          'description': 'Se a carga funciona.',
        },
        'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
      },
      'required': [
        'screenCracked',
        'touchWorking',
        'housingDamaged',
        'waterDamage',
        'batterySwollen',
        'buttonsWorking',
        'cameraWorking',
        'chargingWorking',
      ],
    },
    'CalendarDate': {'type': 'object', 'properties': {}},
  },
};

DiagnosisItemRequest _$DiagnosisItemRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DiagnosisItemRequest', json, ($checkedConvert) {
  final val = DiagnosisItemRequest(
    id: $checkedConvert('id', (v) => v as String),
    description: $checkedConvert('description', (v) => v as String),
    quantity: $checkedConvert('quantity', (v) => QuantityAmount.fromJson(v)),
    unitPrice: $checkedConvert('unitPrice', (v) => MoneyAmount.fromJson(v)),
    productId: $checkedConvert('productId', (v) => v as String?),
    serviceId: $checkedConvert('serviceId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$DiagnosisItemRequestToJson(
  DiagnosisItemRequest instance,
) => <String, dynamic>{
  'id': instance.id,
  'productId': instance.productId,
  'serviceId': instance.serviceId,
  'description': instance.description,
  'quantity': instance.quantity.toJson(),
  'unitPrice': instance.unitPrice.toJson(),
};

const _$DiagnosisItemRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'id': {'type': 'string', 'description': 'UUID do item.'},
    'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
    'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
    'description': {'type': 'string', 'description': 'Descrição.'},
    'quantity': {
      r'$ref': r'#/$defs/QuantityAmount',
      'description': 'Quantidade, escala 3.',
    },
    'unitPrice': {
      r'$ref': r'#/$defs/MoneyAmount',
      'description': 'Preço unitário.',
    },
  },
  'required': ['id', 'description', 'quantity', 'unitPrice'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
  },
};

SaveDiagnosisRequest _$SaveDiagnosisRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('SaveDiagnosisRequest', json, ($checkedConvert) {
  final val = SaveDiagnosisRequest(
    diagnosis: $checkedConvert('diagnosis', (v) => v as String),
    sendQuote: $checkedConvert('sendQuote', (v) => v as bool),
    items: $checkedConvert(
      'items',
      (v) => (v as List<dynamic>)
          .map((e) => DiagnosisItemRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
    ),
    repairNotes: $checkedConvert('repairNotes', (v) => v as String?),
    technicianId: $checkedConvert('technicianId', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$SaveDiagnosisRequestToJson(
  SaveDiagnosisRequest instance,
) => <String, dynamic>{
  'diagnosis': instance.diagnosis,
  'repairNotes': instance.repairNotes,
  'technicianId': instance.technicianId,
  'sendQuote': instance.sendQuote,
  'items': instance.items.map((e) => e.toJson()).toList(),
};

const _$SaveDiagnosisRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'diagnosis': {'type': 'string', 'description': 'Diagnóstico.'},
    'repairNotes': {
      'type': 'string',
      'description': 'Notas de execução, ou `null`.',
    },
    'technicianId': {'type': 'string', 'description': 'Técnico, ou `null`.'},
    'sendQuote': {
      'type': 'boolean',
      'description': 'Se o orçamento já deve ir para o cliente.',
    },
    'items': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/DiagnosisItemRequest'},
      'description': 'Itens. Substituem os anteriores.',
    },
  },
  'required': ['diagnosis', 'sendQuote', 'items'],
  r'$defs': {
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'MoneyAmount': {'type': 'object', 'properties': {}},
    'DiagnosisItemRequest': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição.'},
        'quantity': {
          r'$ref': r'#/$defs/QuantityAmount',
          'description': 'Quantidade, escala 3.',
        },
        'unitPrice': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Preço unitário.',
        },
      },
      'required': ['id', 'description', 'quantity', 'unitPrice'],
    },
  },
};

ApproveServiceOrderRequest _$ApproveServiceOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ApproveServiceOrderRequest', json, ($checkedConvert) {
  final val = ApproveServiceOrderRequest(
    approvedByName: $checkedConvert('approvedByName', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ApproveServiceOrderRequestToJson(
  ApproveServiceOrderRequest instance,
) => <String, dynamic>{'approvedByName': instance.approvedByName};

const _$ApproveServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'approvedByName': {
      'type': 'string',
      'description': 'Nome de quem autorizou.',
    },
  },
  'required': ['approvedByName'],
};

RejectServiceOrderRequest _$RejectServiceOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('RejectServiceOrderRequest', json, ($checkedConvert) {
  final val = RejectServiceOrderRequest(
    rejectionReason: $checkedConvert('rejectionReason', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$RejectServiceOrderRequestToJson(
  RejectServiceOrderRequest instance,
) => <String, dynamic>{'rejectionReason': instance.rejectionReason};

const _$RejectServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'rejectionReason': {'type': 'string', 'description': 'Motivo.'},
  },
  'required': ['rejectionReason'],
};

ChangeServiceOrderStatusRequest _$ChangeServiceOrderStatusRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ChangeServiceOrderStatusRequest', json, ($checkedConvert) {
  final val = ChangeServiceOrderStatusRequest(
    status: $checkedConvert(
      'status',
      (v) => $enumDecode(_$ServiceOrderStatusEnumMap, v),
    ),
    notes: $checkedConvert('notes', (v) => v as String?),
  );
  return val;
});

Map<String, dynamic> _$ChangeServiceOrderStatusRequestToJson(
  ChangeServiceOrderStatusRequest instance,
) => <String, dynamic>{
  'status': _$ServiceOrderStatusEnumMap[instance.status]!,
  'notes': instance.notes,
};

const _$ChangeServiceOrderStatusRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'status': {
      'type': 'object',
      'description': 'Novo status. `delivered` e `cancelled` têm rota própria.',
    },
    'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
  },
  'required': ['status'],
};

AssignTechnicianRequest _$AssignTechnicianRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('AssignTechnicianRequest', json, ($checkedConvert) {
  final val = AssignTechnicianRequest(
    technicianId: $checkedConvert('technicianId', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$AssignTechnicianRequestToJson(
  AssignTechnicianRequest instance,
) => <String, dynamic>{'technicianId': instance.technicianId};

const _$AssignTechnicianRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'technicianId': {
      'type': 'string',
      'description': 'Técnico com vínculo na loja.',
    },
  },
  'required': ['technicianId'],
};

DeliverServiceOrderRequest _$DeliverServiceOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DeliverServiceOrderRequest', json, ($checkedConvert) {
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

Map<String, dynamic> _$DeliverServiceOrderRequestToJson(
  DeliverServiceOrderRequest instance,
) => <String, dynamic>{
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

DeliverServiceOrderResult _$DeliverServiceOrderResultFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('DeliverServiceOrderResult', json, ($checkedConvert) {
  final val = DeliverServiceOrderResult(
    serviceOrder: $checkedConvert(
      'serviceOrder',
      (v) => ServiceOrder.fromJson(v as Map<String, dynamic>),
    ),
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
  );
  return val;
});

Map<String, dynamic> _$DeliverServiceOrderResultToJson(
  DeliverServiceOrderResult instance,
) => <String, dynamic>{
  'serviceOrder': instance.serviceOrder.toJson(),
  'invoice': instance.invoice.toJson(),
  'receivables': instance.receivables.map((e) => e.toJson()).toList(),
};

const _$DeliverServiceOrderResultJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'serviceOrder': {
      r'$ref': r'#/$defs/ServiceOrder',
      'description': 'Ordem entregue.',
    },
    'invoice': {
      r'$ref': r'#/$defs/Invoice',
      'description': 'Nota de saída confirmada.',
    },
    'receivables': {
      'type': 'array',
      'items': {r'$ref': r'#/$defs/Receivable'},
      'description': 'Parcelas geradas.',
    },
  },
  'required': ['serviceOrder', 'invoice', 'receivables'],
  r'$defs': {
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {
          'type': 'boolean',
          'description': 'Se a tela está trincada.',
        },
        'touchWorking': {
          'type': 'boolean',
          'description': 'Se o toque funciona.',
        },
        'housingDamaged': {
          'type': 'boolean',
          'description': 'Se a carcaça está danificada.',
        },
        'waterDamage': {
          'type': 'boolean',
          'description': 'Se há dano por líquido.',
        },
        'batterySwollen': {
          'type': 'boolean',
          'description': 'Se a bateria está inchada.',
        },
        'buttonsWorking': {
          'type': 'boolean',
          'description': 'Se os botões funcionam.',
        },
        'cameraWorking': {
          'type': 'boolean',
          'description': 'Se a câmera funciona.',
        },
        'chargingWorking': {
          'type': 'boolean',
          'description': 'Se a carga funciona.',
        },
        'notes': {'type': 'string', 'description': 'Observação, ou `null`.'},
      },
      'required': [
        'screenCracked',
        'touchWorking',
        'housingDamaged',
        'waterDamage',
        'batterySwollen',
        'buttonsWorking',
        'cameraWorking',
        'chargingWorking',
      ],
    },
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
    'CalendarDate': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ServiceOrderItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'serviceOrderId': {
          'type': 'string',
          'description': 'Ordem dona do item.',
        },
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {
          'type': 'string',
          'description': 'Mão de obra, ou `null`.',
        },
        'description': {'type': 'string', 'description': 'Descrição.'},
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
          'description': 'Custo unitário, ou `null`.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Total calculado.',
        },
        'createdAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Inclusão.',
        },
      },
      'required': [
        'id',
        'serviceOrderId',
        'description',
        'quantity',
        'unitPrice',
        'totalValue',
        'createdAt',
      ],
    },
    'ServiceOrder': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'storeId': {'type': 'string', 'description': 'Loja.'},
        'number': {'type': 'integer', 'description': 'Sequencial por loja.'},
        'customerId': {'type': 'string', 'description': 'Cliente.'},
        'deviceId': {'type': 'string', 'description': 'Aparelho.'},
        'status': {'type': 'object', 'description': 'Situação.'},
        'technicianId': {
          'type': 'string',
          'description': 'Técnico, ou `null`.',
        },
        'reportedIssue': {'type': 'string', 'description': 'Defeito relatado.'},
        'accessories': {
          'type': 'string',
          'description': 'Acessórios, ou `null`.',
        },
        'deviceCondition': {
          r'$ref': r'#/$defs/DeviceEntryCondition',
          'description': 'Checklist de entrada, ou `null`.',
        },
        'unlockCode': {
          'type': 'string',
          'description': 'Senha ou padrão. `null` na listagem e sem a permissão de atualização.',
        },
        'hasBackup': {'type': 'boolean', 'description': 'Se foi feito backup.'},
        'diagnosis': {
          'type': 'string',
          'description': 'Diagnóstico, ou `null`.',
        },
        'quoteValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Valor orçado, ou `null`.',
        },
        'quoteSentAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Envio do orçamento, ou `null`.',
        },
        'approvedAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Aprovação, ou `null`.',
        },
        'approvedByName': {
          'type': 'string',
          'description': 'Quem autorizou pelo cliente, ou `null`.',
        },
        'rejectionReason': {
          'type': 'string',
          'description': 'Motivo da recusa, ou `null`.',
        },
        'promisedDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Prazo prometido, ou `null`.',
        },
        'repairNotes': {
          'type': 'string',
          'description': 'Notas de execução, ou `null`.',
        },
        'totalValue': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma dos itens.',
        },
        'partsTotal': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma das peças.',
        },
        'laborTotal': {
          r'$ref': r'#/$defs/MoneyAmount',
          'description': 'Soma da mão de obra.',
        },
        'warrantyDays': {'type': 'integer', 'description': 'Garantia em dias.'},
        'deliveredAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Entrega, ou `null`.',
        },
        'deliveredToName': {
          'type': 'string',
          'description': 'Quem retirou, ou `null`.',
        },
        'warrantyExpiresAt': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Fim da garantia, ou `null`.',
        },
        'invoiceId': {
          'type': 'string',
          'description': 'Nota gerada na entrega, ou `null`.',
        },
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se o prazo estourou e a ordem segue aberta.',
        },
        'isUnderWarranty': {
          'type': 'boolean',
          'description': 'Se a garantia ainda vale.',
        },
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/ServiceOrderItem'},
          'description': 'Itens. Lista vazia na fila.',
        },
        'createdBy': {
          'type': 'string',
          'description': 'Autor da abertura, ou `null`.',
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
        'customerId',
        'deviceId',
        'status',
        'reportedIssue',
        'hasBackup',
        'totalValue',
        'partsTotal',
        'laborTotal',
        'warrantyDays',
        'isOverdue',
        'isUnderWarranty',
        'items',
        'createdAt',
        'updatedAt',
      ],
    },
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
  },
};

CancelServiceOrderRequest _$CancelServiceOrderRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('CancelServiceOrderRequest', json, ($checkedConvert) {
  final val = CancelServiceOrderRequest(
    reason: $checkedConvert('reason', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$CancelServiceOrderRequestToJson(
  CancelServiceOrderRequest instance,
) => <String, dynamic>{'reason': instance.reason};

const _$CancelServiceOrderRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'reason': {'type': 'string', 'description': 'Motivo.'},
  },
  'required': ['reason'],
};
