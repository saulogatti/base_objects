
import 'package:json_annotation/json_annotation.dart';

part 'create_cash_register_request.g.dart';

/// Corpo de `POST .../cash/registers`.
@JsonSerializable()
final class CreateCashRegisterRequest {
  /// Cria o corpo.
  const new({required this.name, this.id, this.isActive = true});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$CreateCashRegisterRequestFromJson(json);
  static Map<String, Object> get schema => _$CreateCashRegisterRequestJsonSchema;

  /// UUID. O servidor gera se vier `null`.
  final String? id;

  /// Nome do terminal.
  final String name;

  /// Padrão `true` quando o corpo omite.
  final bool isActive;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CreateCashRegisterRequestToJson(this);
}
