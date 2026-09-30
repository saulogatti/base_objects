// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'api_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiError _$ApiErrorFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiError', json, ($checkedConvert) {
      final val = ApiError(
        code: $checkedConvert('code', (v) => v as String),
        message: $checkedConvert('message', (v) => v as String),
        requestId: $checkedConvert('requestId', (v) => v as String),
        details: $checkedConvert('details', (v) => readJsonObject(v)),
      );
      return val;
    });

Map<String, dynamic> _$ApiErrorToJson(ApiError instance) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'requestId': instance.requestId,
  'details': writeJsonObject(instance.details),
};

const _$ApiErrorJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'code': {
      'type': 'string',
      'description': 'Código estável, por exemplo `VALIDATION_ERROR`.',
    },
    'message': {
      'type': 'string',
      'description': 'Mensagem em português, pronta para exibir.',
    },
    'requestId': {'type': 'string', 'description': 'Correlação da requisição.'},
    'details': {
      'type': 'object',
      'additionalProperties': {'type': 'object'},
      'description': 'Dados extras. Objeto JSON, ou `null`.',
    },
  },
  'required': ['code', 'message', 'requestId'],
};

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate('ApiErrorResponse', json, ($checkedConvert) {
      final val = ApiErrorResponse(
        error: $checkedConvert(
          'error',
          (v) => ApiError.fromJson(v as Map<String, dynamic>),
        ),
      );
      return val;
    });

Map<String, dynamic> _$ApiErrorResponseToJson(ApiErrorResponse instance) =>
    <String, dynamic>{'error': instance.error.toJson()};

const _$ApiErrorResponseJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'error': {r'$ref': r'#/$defs/ApiError', 'description': 'Erro da resposta.'},
  },
  'required': ['error'],
  r'$defs': {
    'ApiError': {
      'type': 'object',
      'properties': {
        'code': {
          'type': 'string',
          'description': 'Código estável, por exemplo `VALIDATION_ERROR`.',
        },
        'message': {
          'type': 'string',
          'description': 'Mensagem em português, pronta para exibir.',
        },
        'requestId': {
          'type': 'string',
          'description': 'Correlação da requisição.',
        },
        'details': {
          'type': 'object',
          'additionalProperties': {'type': 'object'},
          'description': 'Dados extras. Objeto JSON, ou `null`.',
        },
      },
      'required': ['code', 'message', 'requestId'],
    },
  },
};
