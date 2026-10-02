import 'package:base_objects/src/api/errors/api_error_code.dart';
import 'package:base_objects/src/api/errors/api_error_json_keys.dart';

/// Erro de domínio da API: vira resposta JSON da §1.8 no middleware.
class ApiException implements Exception {
  const new({required this.code, required this.message, this.details});

  /// Já existe um `SystemUserData` (`POST /installation`).
  factory alreadyInstalled([String message = ApiErrorMessages.alreadyInstalled]) =>
      ApiException(code: ApiErrorCode.alreadyInstalled, message: message);

  /// Regra de negócio genérica (`422 BUSINESS_RULE`).
  factory businessRule(String message, {Map<String, Object?>? details}) =>
      ApiException(code: ApiErrorCode.businessRule, message: message, details: details);

  /// Terminal já possui turno aberto.
  factory cashSessionAlreadyOpen([String message = ApiErrorMessages.cashSessionAlreadyOpen]) =>
      ApiException(code: ApiErrorCode.cashSessionAlreadyOpen, message: message);

  /// Operação exige turno de caixa aberto do operador.
  factory cashSessionRequired([String message = ApiErrorMessages.cashSessionRequired]) =>
      ApiException(code: ApiErrorCode.cashSessionRequired, message: message);

  /// Unicidade violada. [field] é a chave JSON em `details.field`.
  factory conflict({String message = ApiErrorMessages.conflict, String? field}) => ApiException(
    code: ApiErrorCode.conflict,
    message: message,
    details: field == null ? null : {ApiErrorJsonKeys.field: field},
  );

  /// Sem permissão.
  factory forbidden([String message = ApiErrorMessages.forbidden]) =>
      ApiException(code: ApiErrorCode.forbidden, message: message);

  /// Mesmo id de operação com payload diferente.
  factory idempotencyConflict([String message = ApiErrorMessages.idempotencyConflict]) =>
      ApiException(code: ApiErrorCode.idempotencyConflict, message: message);

  /// Exclusão bloqueada por referência.
  factory inUse([String message = ApiErrorMessages.inUse]) =>
      ApiException(code: ApiErrorCode.inUse, message: message);

  /// E-mail ou senha inválidos.
  factory invalidCredentials() => const ApiException(
    code: ApiErrorCode.invalidCredentials,
    message: ApiErrorMessages.invalidCredentials,
  );

  /// Código de recuperação inválido, expirado ou já usado.
  factory invalidRecoveryCode() => const ApiException(
    code: ApiErrorCode.invalidRecoveryCode,
    message: ApiErrorMessages.invalidRecoveryCode,
  );

  /// Bloqueio por tentativas de login.
  factory loginLocked({required int retryAfterSeconds}) => ApiException(
    code: ApiErrorCode.loginLocked,
    message: ApiErrorMessages.loginLocked,
    details: {ApiErrorJsonKeys.retryAfterSeconds: retryAfterSeconds},
  );

  /// Sem vínculo com a loja.
  factory noStoreAccess([String message = ApiErrorMessages.noStoreAccess]) =>
      ApiException(code: ApiErrorCode.noStoreAccess, message: message);

  /// Recurso inexistente.
  factory notFound([String message = ApiErrorMessages.notFound]) =>
      ApiException(code: ApiErrorCode.notFound, message: message);

  /// Limite de pedidos (recuperação de senha, etc.).
  factory rateLimited({int? retryAfterSeconds}) => ApiException(
    code: ApiErrorCode.rateLimited,
    message: ApiErrorMessages.rateLimited,
    details: retryAfterSeconds == null
        ? null
        : {ApiErrorJsonKeys.retryAfterSeconds: retryAfterSeconds},
  );

  /// Access token expirado.
  factory tokenExpired([String message = ApiErrorMessages.tokenExpired]) =>
      ApiException(code: ApiErrorCode.tokenExpired, message: message);

  /// Sem token ou token inválido.
  factory unauthenticated(String message) =>
      ApiException(code: ApiErrorCode.unauthenticated, message: message);

  /// Usuário desativado.
  factory userInactive() =>
      const ApiException(code: ApiErrorCode.userInactive, message: ApiErrorMessages.userInactive);

  /// Corpo ou query inválidos.
  factory validation({required String message, Map<String, Object?>? fields}) => ApiException(
    code: ApiErrorCode.validationError,
    message: message,
    details: fields == null ? null : {ApiErrorJsonKeys.fields: fields},
  );

  /// Código da §1.8.
  final ApiErrorCode code;

  /// Texto em português, pronto para exibir.
  final String message;

  /// Detalhes opcionais (`fields`, ids, etc.). Ausente vira `null` no JSON.
  final Map<String, Object?>? details;
  @override
  String toString() {
    return 'ApiException(code: $code, message: $message, details: $details)';
  }
}
