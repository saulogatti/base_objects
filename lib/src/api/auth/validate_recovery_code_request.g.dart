// GENERATED CODE - DO NOT MODIFY BY HAND

// coverage:ignore-file
// ignore_for_file: cast_nullable_to_non_nullable, unnecessary_null_checks,  unnecessary_lambdas, inference_failure_on_collection_literal

part of 'validate_recovery_code_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidateRecoveryCodeRequest _$ValidateRecoveryCodeRequestFromJson(
  Map<String, dynamic> json,
) => $checkedCreate('ValidateRecoveryCodeRequest', json, ($checkedConvert) {
  final val = ValidateRecoveryCodeRequest(
    email: $checkedConvert('email', (v) => v as String),
    code: $checkedConvert('code', (v) => v as String),
  );
  return val;
});

Map<String, dynamic> _$ValidateRecoveryCodeRequestToJson(
  ValidateRecoveryCodeRequest instance,
) => <String, dynamic>{'email': instance.email, 'code': instance.code};

const _$ValidateRecoveryCodeRequestJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'email': {'type': 'string', 'description': 'E-mail do pedido.'},
    'code': {'type': 'string', 'description': 'Código de 6 dígitos.'},
  },
  'required': ['email', 'code'],
};
