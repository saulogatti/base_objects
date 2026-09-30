import 'package:base_objects/src/api/cash/cash_method_total.dart';
import 'package:base_objects/src/api/cash/cash_session.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash_summary.g.dart';

/// Resumo que as telas de caixa consomem (`API.md` §12).
@JsonSerializable()
final class CashSummary {
  /// Cria o resumo.
  const new({
    required this.session,
    required this.registerName,
    required this.operatorName,
    required this.expectedCash,
    required this.income,
    required this.outgoing,
    required this.totalsByMethod,
    required this.actorNames,
    required this.documentLabels,
  });

  /// Lê o resumo.
  factory fromJson(Map<String, dynamic> json) => _$CashSummaryFromJson(json);

  static Map<String, Object> get schema => _$CashSummaryJsonSchema;

  /// Turno.
  final CashSession session;

  /// Nome do terminal.
  final String registerName;

  /// Nome do operador.
  final String operatorName;

  /// Gaveta esperada.
  final MoneyAmount expectedCash;

  /// Entradas.
  final MoneyAmount income;

  /// Saídas.
  final MoneyAmount outgoing;

  /// Totais por forma, em lista.
  final List<CashMethodTotal> totalsByMethod;

  /// Nomes dos autores, indexados pelo id.
  final Map<String, String> actorNames;

  /// Rótulos de documentos, indexados pelo id.
  final Map<String, String> documentLabels;

  /// Serializa o resumo.
  Map<String, dynamic> toJson() => _$CashSummaryToJson(this);
}
