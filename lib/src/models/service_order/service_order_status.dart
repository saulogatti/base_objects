/// Situação de uma ordem de serviço ao longo do conserto.
///
/// {@category modelos}
/// {@subCategory OrdemServico}
///
/// Espelha o tipo `service_order_status` do PostgreSQL. Toda transição é
/// registrada com autor e horário no histórico da ordem — é esse registro que
/// resolve divergência com o cliente sobre prazo e autorização.
enum ServiceOrderStatus {
  /// Aparelho recebido e na bancada.
  received,

  /// Em análise técnica.
  inDiagnosis,

  /// Orçamento enviado, aguardando resposta do cliente.
  awaitingApproval,

  /// Orçamento aprovado pelo cliente.
  approved,

  /// Orçamento recusado pelo cliente.
  rejected,

  /// Aguardando chegada de peça.
  awaitingParts,

  /// Conserto em execução.
  inRepair,

  /// Pronto, aguardando retirada.
  ready,

  /// Entregue ao cliente.
  delivered,

  /// Cancelada antes da conclusão.
  cancelled,

  /// Devolvido sem conserto.
  returnedUnrepaired;

  /// Indica ordem encerrada, que não deve mais aparecer na fila da bancada.
  bool get isClosed => switch (this) {
    ServiceOrderStatus.delivered ||
    ServiceOrderStatus.cancelled ||
    ServiceOrderStatus.returnedUnrepaired => true,
    _ => false,
  };

  /// Indica que o orçamento já foi aceito e o serviço pode ser executado.
  bool get isApproved => switch (this) {
    ServiceOrderStatus.approved ||
    ServiceOrderStatus.awaitingParts ||
    ServiceOrderStatus.inRepair ||
    ServiceOrderStatus.ready ||
    ServiceOrderStatus.delivered => true,
    _ => false,
  };
}
