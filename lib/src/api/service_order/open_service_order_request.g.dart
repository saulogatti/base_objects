// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal, unused_element

part of 'open_service_order_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OpenServiceOrderRequest _$OpenServiceOrderRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate('OpenServiceOrderRequest', json, ($checkedConvert) {
      final val = OpenServiceOrderRequest(
        id: $checkedConvert('id', (v) => v as String),
        customerId: $checkedConvert('customerId', (v) => v as String),
        device: $checkedConvert('device', (v) => Device.fromJson(v as Map<String, dynamic>)),
        reportedIssue: $checkedConvert('reportedIssue', (v) => v as String),
        hasBackup: $checkedConvert('hasBackup', (v) => v as bool),
        accessories: $checkedConvert('accessories', (v) => v as String?),
        deviceCondition: $checkedConvert(
          'deviceCondition',
          (v) => v == null ? null : DeviceEntryCondition.fromJson(v as Map<String, dynamic>),
        ),
        unlockCode: $checkedConvert('unlockCode', (v) => v as String?),
        promisedDate: $checkedConvert(
          'promisedDate',
          (v) => v == null ? null : CalendarDate.fromJson(v),
        ),
      );
      return val;
    });

Map<String, dynamic> _$OpenServiceOrderRequestToJson(OpenServiceOrderRequest instance) =>
    <String, dynamic>{
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
    'unlockCode': {'type': 'string', 'description': 'Senha ou padrão, ou `null`.'},
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
        'value': {'type': 'string', 'format': 'date-time', 'description': 'Instante em UTC.'},
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
    'CalendarDate': {'type': 'object', 'properties': {}},
  },
};
