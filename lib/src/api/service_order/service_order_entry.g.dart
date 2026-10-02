// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'service_order_entry.dart';

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
