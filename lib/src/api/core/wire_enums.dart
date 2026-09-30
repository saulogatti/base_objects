import 'package:json_annotation/json_annotation.dart';

/// Tipo da nota (`entry` compra, `exit` venda).
@JsonEnum(fieldRename: FieldRename.snake)
enum InvoiceType {
  /// Compra.
  entry,

  /// Venda.
  exit,
}

/// Situação da nota.
@JsonEnum(fieldRename: FieldRename.snake)
enum InvoiceStatus {
  /// Rascunho.
  draft,

  /// Confirmada.
  confirmed,

  /// Cancelada.
  cancelled,
}

/// Situação da ordem de serviço.
@JsonEnum(fieldRename: FieldRename.snake)
enum ServiceOrderStatus {
  /// Recebida.
  received,

  /// Em diagnóstico.
  inDiagnosis,

  /// Aguardando aprovação do cliente.
  awaitingApproval,

  /// Orçamento aprovado.
  approved,

  /// Orçamento recusado.
  rejected,

  /// Aguardando peça.
  awaitingParts,

  /// Em conserto.
  inRepair,

  /// Pronta para retirada.
  ready,

  /// Entregue.
  delivered,

  /// Cancelada.
  cancelled,

  /// Devolvida sem conserto.
  returnedUnrepaired,
}

/// Fases do ciclo de uma [ServiceOrderStatus].
extension ServiceOrderStatusStage on ServiceOrderStatus {
  /// Se a ordem está encerrada e não deve mais aparecer na fila da bancada.
  bool get isClosed => switch (this) {
    ServiceOrderStatus.delivered ||
    ServiceOrderStatus.cancelled ||
    ServiceOrderStatus.returnedUnrepaired => true,
    _ => false,
  };

  /// Se o orçamento já foi aceito e o serviço pode ser executado.
  bool get isApproved => switch (this) {
    ServiceOrderStatus.approved ||
    ServiceOrderStatus.awaitingParts ||
    ServiceOrderStatus.inRepair ||
    ServiceOrderStatus.ready ||
    ServiceOrderStatus.delivered => true,
    _ => false,
  };
}

/// Motivo do movimento de estoque.
@JsonEnum(fieldRename: FieldRename.snake)
enum StockReason {
  /// Compra.
  purchase,

  /// Venda.
  sale,

  /// Peça de ordem de serviço.
  serviceOrder,

  /// Ajuste de inventário.
  adjustment,

  /// Entrada de transferência.
  transferIn,

  /// Saída de transferência.
  transferOut,

  /// Estorno de saída.
  returnIn,

  /// Estorno de entrada.
  returnOut,

  /// Perda.
  loss,
}

/// Situação da transferência entre lojas.
@JsonEnum(fieldRename: FieldRename.snake)
enum StockTransferStatus {
  /// Aguardando recebimento.
  pending,

  /// Recebida no destino.
  received,

  /// Cancelada na origem.
  cancelled,
}

/// Situação do turno de caixa.
@JsonEnum(fieldRename: FieldRename.snake)
enum CashSessionStatus {
  /// Aberto.
  open,

  /// Fechado.
  closed,
}

/// Natureza do movimento de caixa.
@JsonEnum(fieldRename: FieldRename.snake)
enum CashMovementType {
  /// Recebimento de venda.
  sale,

  /// Recebimento de ordem de serviço.
  serviceOrder,

  /// Suprimento.
  supply,

  /// Sangria.
  withdrawal,

  /// Despesa.
  expense,

  /// Estorno.
  refund,

  /// Acerto.
  adjustment,
}

/// Sentido do acerto de caixa (`in` entra, `out` sai).
@JsonEnum()
enum CashAdjustmentDirection {
  /// Entra no caixa.
  @JsonValue('in')
  inward,

  /// Sai do caixa.
  @JsonValue('out')
  outward,
}

/// Ação gravada no log de auditoria.
@JsonEnum(fieldRename: FieldRename.snake)
enum AuditAction {
  /// Criação.
  create,

  /// Alteração.
  update,

  /// Exclusão.
  delete,

  /// Login bem-sucedido.
  login,

  /// Login recusado.
  loginFailed,

  /// Cancelamento.
  cancel,

  /// Aprovação.
  approve,

  /// Ajuste de estoque.
  stockAdjust,

  /// Mudança de permissão.
  permissionChange,

  /// Abertura de caixa.
  cashOpen,

  /// Fechamento de caixa.
  cashClose,

  /// Mudança de preço.
  priceChange,
}
