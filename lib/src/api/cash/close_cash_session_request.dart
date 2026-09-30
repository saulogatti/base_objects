
import 'package:base_objects/src/api/core/scaled_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'close_cash_session_request.g.dart';

/// Corpo de `POST .../close`.
@JsonSerializable()
final class CloseCashSessionRequest {
  /// Cria o corpo.
  const new({required this.countedAmount, this.notes});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$CloseCashSessionRequestFromJson(json);

  /// Esquema JSON gerado para o corpo.
  static Map<String, Object> get schema => _$CloseCashSessionRequestJsonSchema;

  /// Valor contado na gaveta.
  final MoneyAmount countedAmount;

  /// Obrigatório quando o contado difere do esperado.
  final String? notes;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CloseCashSessionRequestToJson(this);
}
