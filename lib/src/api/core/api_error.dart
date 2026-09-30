import 'package:base_objects/src/api/core/json_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_error.g.dart';

/// Corpo `error` do envelope (`API.md` §1.8).
@JsonSerializable()
final class ApiError {
  /// Cria o erro.
  const new({
    required this.code,
    required this.message,
    required this.requestId,
    this.details,
  });

  /// Lê o objeto `error`.
  factory fromJson(Map<String, dynamic> json) => _$ApiErrorFromJson(json);

  /// Código estável, por exemplo `VALIDATION_ERROR`.
  final String code;

  /// Mensagem em português, pronta para exibir.
  final String message;

  /// Correlação da requisição.
  final String requestId;

  /// Dados extras. Objeto JSON, ou `null`.
  @JsonKey(fromJson: readJsonObject, toJson: writeJsonObject)
  final Map<String, Object?>? details;

  /// Serializa o objeto `error`.
  Map<String, dynamic> toJson() => _$ApiErrorToJson(this);

  /// Esquema JSON gerado para o erro.
  static Map<String, Object> get schema => _$ApiErrorJsonSchema;
}

/// Resposta de erro `{ error: { code, message, details, requestId } }`.
@JsonSerializable()
final class ApiErrorResponse {
  /// Cria o envelope.
  const new({required this.error});

  /// Lê o envelope.
  factory fromJson(Map<String, dynamic> json) => _$ApiErrorResponseFromJson(json);

  /// Erro da resposta.
  final ApiError error;

  /// Serializa o envelope.
  Map<String, dynamic> toJson() => _$ApiErrorResponseToJson(this);

  /// Esquema JSON gerado para o envelope.
  static Map<String, Object> get schema => _$ApiErrorResponseJsonSchema;
}
