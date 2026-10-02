// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'service_order_listing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceOrderCustomer _$ServiceOrderCustomerFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ServiceOrderCustomer', json, ($checkedConvert) {
      final val = ServiceOrderCustomer(
        id: $checkedConvert('id', (v) => v as String),
        name: $checkedConvert('name', (v) => v as String),
        phone: $checkedConvert('phone', (v) => v as String?),
      );
      return val;
    });

Map<String, dynamic> _$ServiceOrderCustomerToJson(ServiceOrderCustomer instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name, 'phone': instance.phone};

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
        order: $checkedConvert('order', (v) => ServiceOrder.fromJson(v as Map<String, dynamic>)),
        customer: $checkedConvert(
          'customer',
          (v) => ServiceOrderCustomer.fromJson(v as Map<String, dynamic>),
        ),
        device: $checkedConvert('device', (v) => Device.fromJson(v as Map<String, dynamic>)),
      );
      return val;
    });

Map<String, dynamic> _$ServiceOrderListingToJson(ServiceOrderListing instance) => <String, dynamic>{
  'order': instance.order.toJson(),
  'customer': instance.customer.toJson(),
  'device': instance.device.toJson(),
};

const _$ServiceOrderListingJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'order': {r'$ref': r'#/$defs/ServiceOrder', 'description': 'Ordem sem itens e sem senha.'},
    'customer': {r'$ref': r'#/$defs/ServiceOrderCustomer', 'description': 'Cliente.'},
    'device': {r'$ref': r'#/$defs/Device', 'description': 'Aparelho.'},
  },
  'required': ['order', 'customer', 'device'],
  r'$defs': {
    'DeviceEntryCondition': {
      'type': 'object',
      'properties': {
        'screenCracked': {'type': 'boolean', 'description': 'Se a tela está trincada.'},
        'touchWorking': {'type': 'boolean', 'description': 'Se o toque funciona.'},
        'housingDamaged': {'type': 'boolean', 'description': 'Se a carcaça está danificada.'},
        'waterDamage': {'type': 'boolean', 'description': 'Se há dano por líquido.'},
        'batterySwollen': {'type': 'boolean', 'description': 'Se a bateria está inchada.'},
        'buttonsWorking': {'type': 'boolean', 'description': 'Se os botões funcionam.'},
        'cameraWorking': {'type': 'boolean', 'description': 'Se a câmera funciona.'},
        'chargingWorking': {'type': 'boolean', 'description': 'Se a carga funciona.'},
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
        'value': {'type': 'string', 'format': 'date-time', 'description': 'Instante em UTC.'},
      },
      'required': ['value'],
    },
    'CalendarDate': {'type': 'object', 'properties': {}},
    'QuantityAmount': {'type': 'object', 'properties': {}},
    'ServiceOrderItem': {
      'type': 'object',
      'properties': {
        'id': {'type': 'string', 'description': 'UUID.'},
        'serviceOrderId': {'type': 'string', 'description': 'Ordem dona do item.'},
        'productId': {'type': 'string', 'description': 'Peça, ou `null`.'},
        'serviceId': {'type': 'string', 'description': 'Mão de obra, ou `null`.'},
        'description': {'type': 'string', 'description': 'Descrição.'},
        'quantity': {r'$ref': r'#/$defs/QuantityAmount', 'description': 'Quantidade, escala 3.'},
        'unitPrice': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Preço unitário.'},
        'unitCost': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Custo unitário, ou `null`.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Total calculado.'},
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
        'quoteValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Valor orçado, ou `null`.'},
        'quoteSentAt': {
          r'$ref': r'#/$defs/ApiInstant',
          'description': 'Envio do orçamento, ou `null`.',
        },
        'approvedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Aprovação, ou `null`.'},
        'approvedByName': {
          'type': 'string',
          'description': 'Quem autorizou pelo cliente, ou `null`.',
        },
        'rejectionReason': {'type': 'string', 'description': 'Motivo da recusa, ou `null`.'},
        'promisedDate': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Prazo prometido, ou `null`.',
        },
        'repairNotes': {'type': 'string', 'description': 'Notas de execução, ou `null`.'},
        'totalValue': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma dos itens.'},
        'partsTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma das peças.'},
        'laborTotal': {r'$ref': r'#/$defs/MoneyAmount', 'description': 'Soma da mão de obra.'},
        'warrantyDays': {'type': 'integer', 'description': 'Garantia em dias.'},
        'deliveredAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Entrega, ou `null`.'},
        'deliveredToName': {'type': 'string', 'description': 'Quem retirou, ou `null`.'},
        'warrantyExpiresAt': {
          r'$ref': r'#/$defs/CalendarDate',
          'description': 'Fim da garantia, ou `null`.',
        },
        'invoiceId': {'type': 'string', 'description': 'Nota gerada na entrega, ou `null`.'},
        'isOverdue': {
          'type': 'boolean',
          'description': 'Se o prazo estourou e a ordem segue aberta.',
        },
        'isUnderWarranty': {'type': 'boolean', 'description': 'Se a garantia ainda vale.'},
        'items': {
          'type': 'array',
          'items': {r'$ref': r'#/$defs/ServiceOrderItem'},
          'description': 'Itens. Lista vazia na fila.',
        },
        'createdBy': {'type': 'string', 'description': 'Autor da abertura, ou `null`.'},
        'createdAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Criação.'},
        'updatedAt': {r'$ref': r'#/$defs/ApiInstant', 'description': 'Última alteração.'},
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
        'serialNumber': {'type': 'string', 'description': 'Número de série, ou `null`.'},
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
