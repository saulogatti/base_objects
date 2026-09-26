import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cash.g.dart';

/// Forma de pagamento (`API.md` §12).
@JsonSerializable()
final class PaymentMethod {
  /// Cria a forma.
  const new({
    required this.id,
    required this.code,
    required this.name,
    required this.affectsCashDrawer,
    required this.allowsInstallments,
    required this.settlementDays,
    required this.feePercent,
    required this.isActive,
    required this.sortOrder,
  });

  /// Lê a forma.
  factory fromJson(Map<String, dynamic> json) => _$PaymentMethodFromJson(json);

  /// UUID.
  final String id;

  /// Código estável, por exemplo `credit`.
  final String code;

  /// Nome de exibição.
  final String name;

  /// Se o valor entra na gaveta.
  final bool affectsCashDrawer;

  /// Se aceita mais de uma parcela.
  final bool allowsInstallments;

  /// Dias até a liquidação.
  final int settlementDays;

  /// Taxa percentual, escala 3.
  final PercentAmount feePercent;

  /// Se a forma está ativa.
  final bool isActive;

  /// Ordem de exibição.
  final int sortOrder;

  /// Serializa a forma.
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}

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

/// Corpo de `POST .../cash/registers`.
@JsonSerializable()
final class CreateCashRegisterRequest {
  /// Cria o corpo.
  const new({required this.name, this.id, this.isActive = true});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$CreateCashRegisterRequestFromJson(json);

  /// UUID. O servidor gera se vier `null`.
  final String? id;

  /// Nome do terminal.
  final String name;

  /// Padrão `true` quando o corpo omite.
  final bool isActive;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CreateCashRegisterRequestToJson(this);
}

/// Movimento de um turno.
@JsonSerializable()
final class CashMovement {
  /// Cria o movimento.
  const new({
    required this.id,
    required this.sessionId,
    required this.type,
    required this.methodName,
    required this.affectsCashDrawer,
    required this.amount,
    required this.feePercent,
    required this.feeAmount,
    required this.netAmount,
    required this.createdAt,
    this.paymentMethodId,
    this.expectedSettlementAt,
    this.description,
    this.referenceType,
    this.referenceId,
    this.refundedMovementId,
    this.createdBy,
  });

  /// Lê o movimento.
  factory fromJson(Map<String, dynamic> json) => _$CashMovementFromJson(json);

  /// UUID.
  final String id;

  /// Turno.
  final String sessionId;

  /// Natureza.
  final CashMovementType type;

  /// Forma, ou `null`.
  final String? paymentMethodId;

  /// Nome da forma no momento do lançamento.
  final String methodName;

  /// Se afetou a gaveta.
  final bool affectsCashDrawer;

  /// Valor. Positivo entra, negativo sai.
  final MoneyAmount amount;

  /// Taxa percentual, escala 3.
  final PercentAmount feePercent;

  /// Valor da taxa.
  final MoneyAmount feeAmount;

  /// Líquido (`amount` menos a taxa).
  final MoneyAmount netAmount;

  /// Previsão de liquidação, ou `null`.
  final ApiInstant? expectedSettlementAt;

  /// Descrição, ou `null`.
  final String? description;

  /// Tipo da referência, ou `null`.
  final String? referenceType;

  /// Id da referência, ou `null`.
  final String? referenceId;

  /// Movimento estornado, ou `null`.
  final String? refundedMovementId;

  /// Autor, ou `null`.
  final String? createdBy;

  /// Inclusão.
  final ApiInstant createdAt;

  /// Serializa o movimento.
  Map<String, dynamic> toJson() => _$CashMovementToJson(this);
}

/// Turno de caixa.
@JsonSerializable()
final class CashSession {
  /// Cria o turno.
  const new({
    required this.id,
    required this.storeId,
    required this.registerId,
    required this.status,
    required this.openedBy,
    required this.openedAt,
    required this.openingAmount,
    required this.movements,
    this.closedBy,
    this.closedAt,
    this.countedAmount,
    this.expectedAmount,
    this.difference,
    this.closingNotes,
  });

  /// Lê o turno.
  factory fromJson(Map<String, dynamic> json) => _$CashSessionFromJson(json);

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Terminal.
  final String registerId;

  /// Situação.
  final CashSessionStatus status;

  /// Quem abriu.
  final String openedBy;

  /// Abertura.
  final ApiInstant openedAt;

  /// Fundo de troco.
  final MoneyAmount openingAmount;

  /// Quem fechou, ou `null`.
  final String? closedBy;

  /// Fechamento, ou `null`.
  final ApiInstant? closedAt;

  /// Valor contado, ou `null` enquanto aberto.
  final MoneyAmount? countedAmount;

  /// Valor esperado, ou `null` enquanto aberto.
  final MoneyAmount? expectedAmount;

  /// Diferença, ou `null` enquanto aberto.
  final MoneyAmount? difference;

  /// Observação do fechamento, ou `null`.
  final String? closingNotes;

  /// Movimentos do turno.
  final List<CashMovement> movements;

  /// Serializa o turno.
  Map<String, dynamic> toJson() => _$CashSessionToJson(this);
}

/// Total de uma forma no resumo do caixa.
@JsonSerializable()
final class CashMethodTotal {
  /// Cria o total.
  const new({required this.paymentMethodId, required this.name, required this.amount});

  /// Lê o total.
  factory fromJson(Map<String, dynamic> json) => _$CashMethodTotalFromJson(json);

  /// Forma.
  final String paymentMethodId;

  /// Nome da forma.
  final String name;

  /// Soma.
  final MoneyAmount amount;

  /// Serializa o total.
  Map<String, dynamic> toJson() => _$CashMethodTotalToJson(this);
}

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

/// Corpo de `POST .../cash/sessions`.
@JsonSerializable()
final class OpenCashSessionRequest {
  /// Cria o corpo.
  const new({
    required this.id,
    required this.registerId,
    required this.openingAmount,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$OpenCashSessionRequestFromJson(json);

  /// UUID do turno. Também é a chave de idempotência.
  final String id;

  /// Terminal.
  final String registerId;

  /// Fundo de troco, maior ou igual a zero.
  final MoneyAmount openingAmount;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$OpenCashSessionRequestToJson(this);
}

/// Corpo de suprimento, sangria, despesa ou acerto.
@JsonSerializable()
final class RecordCashMovementRequest {
  /// Cria o corpo.
  const new({
    required this.id,
    required this.type,
    required this.amount,
    required this.reason,
    this.direction,
  });

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$RecordCashMovementRequestFromJson(json);

  /// UUID do movimento. Também é a chave de idempotência.
  final String id;

  /// `supply`, `withdrawal`, `expense` ou `adjustment`.
  final CashMovementType type;

  /// Valor sempre positivo. O servidor aplica o sinal.
  final MoneyAmount amount;

  /// Justificativa obrigatória.
  final String reason;

  /// Sentido do acerto. As outras naturezas ignoram.
  final CashAdjustmentDirection? direction;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$RecordCashMovementRequestToJson(this);
}

/// Corpo de `POST .../close`.
@JsonSerializable()
final class CloseCashSessionRequest {
  /// Cria o corpo.
  const new({required this.countedAmount, this.notes});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) =>
      _$CloseCashSessionRequestFromJson(json);

  /// Valor contado na gaveta.
  final MoneyAmount countedAmount;

  /// Obrigatório quando o contado difere do esperado.
  final String? notes;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CloseCashSessionRequestToJson(this);
}
