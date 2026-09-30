import 'package:json_annotation/json_annotation.dart';

part 'validate_recovery_code_request.g.dart';

/// Corpo de `POST /auth/password-recovery/validate`.
@JsonSerializable()
final class ValidateRecoveryCodeRequest {
  /// Cria a validação.
  const new({required this.email, required this.code});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$ValidateRecoveryCodeRequestFromJson(json);

  /// E-mail do pedido.
  final String email;

  /// Código de 6 dígitos.
  final String code;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$ValidateRecoveryCodeRequestToJson(this);
}
