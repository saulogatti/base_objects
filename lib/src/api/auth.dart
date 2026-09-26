import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/store.dart';
import 'package:json_annotation/json_annotation.dart';

part 'auth.g.dart';

/// Corpo de `POST /auth/login` (`API.md` §2.1).
@JsonSerializable()
final class LoginRequest {
  /// Cria o login.
  const LoginRequest({required this.email, required this.password, this.storeId});

  /// Lê o corpo.
  factory LoginRequest.fromJson(Map<String, dynamic> json) => _$LoginRequestFromJson(json);

  /// E-mail do usuário.
  final String email;

  /// Senha em texto. Não volta nas respostas.
  final String password;

  /// Loja preferida. `null` ativa a primeira com vínculo.
  final String? storeId;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
