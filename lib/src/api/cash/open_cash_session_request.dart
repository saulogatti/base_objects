
import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:json_annotation/json_annotation.dart';
part 'open_cash_session_request.g.dart';


/// Corpo de `POST .../cash/sessions`.
@JsonSerializable()
final class OpenCashSessionRequest {
  /// Cria o corpo.
  const new({required this.id, required this.registerId, required this.openingAmount});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$OpenCashSessionRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
  static Map<String, Object> get schema => _$OpenCashSessionRequestJsonSchema;

  /// UUID do turno. Também é a chave de idempotência.
  final String id;

  /// Terminal.
  final String registerId;

  /// Fundo de troco, maior ou igual a zero.
  final MoneyAmount openingAmount;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$OpenCashSessionRequestToJson(this);
}
