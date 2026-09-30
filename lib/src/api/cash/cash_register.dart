import 'package:base_objects/src/api/core/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_register.g.dart';

/// Terminal de caixa.
@JsonSerializable()
final class CashRegister {
  /// Cria o terminal.
  const new({
    required this.id,
    required this.storeId,
    required this.name,
    required this.isActive,
    required this.createdAt,
  });

  /// Lê o terminal.
  factory fromJson(Map<String, dynamic> json) => _$CashRegisterFromJson(json);

  /// Esquema JSON gerado para o terminal.
  static Map<String, Object> get schema => _$CashRegisterJsonSchema;

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Nome, por exemplo `Caixa 1`.
  final String name;

  /// Se o terminal está ativo.
  final bool isActive;

  /// Criação.
  final ApiInstant createdAt;

  /// Serializa o terminal.
  Map<String, dynamic> toJson() => _$CashRegisterToJson(this);
}
