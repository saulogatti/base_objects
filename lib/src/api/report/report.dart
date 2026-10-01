import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/quantity_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'report.g.dart';

/// Ponto de analytics (`API.md` §14.1).
///
/// Valores em string de dinheiro. `purchaseValue` sai `null` sem
/// `report:financial`. `productId` só existe em `by-product`.
@JsonSerializable()
final class AnalyticsPoint {
  /// Cria o ponto.
  const new({
    required this.label,
    required this.salesValue,
    required this.productsCount,
    this.purchaseValue,
    this.productId,
  });

  /// Lê o ponto.
  factory fromJson(Map<String, dynamic> json) => _$AnalyticsPointFromJson(json);

  /// Data `YYYY-MM-DD` ou nome do produto.
  final String label;

  /// Soma das notas de saída confirmadas.
  final MoneyAmount salesValue;

  /// Soma das notas de entrada confirmadas, ou `null` sem permissão.
  final MoneyAmount? purchaseValue;

  /// Quantidade de itens movimentados.
  final int productsCount;

  /// Produto, só em `by-product`.
  final String? productId;

  /// Serializa o ponto.
  Map<String, dynamic> toJson() => _$AnalyticsPointToJson(this);
}

/// Totais do consolidado de loja (`API.md` §14.2).
@JsonSerializable()
final class ReportOverview {
  /// Cria o consolidado.
  const new({
    required this.salesTotal,
    required this.averageTicket,
    required this.invoiceCount,
    required this.exitInvoiceCount,
    required this.entryInvoiceCount,
    required this.productsBelowMinimum,
    this.purchasesTotal,
  });

  /// Lê o consolidado.
  factory fromJson(Map<String, dynamic> json) => _$ReportOverviewFromJson(json);

  /// Soma das notas de saída confirmadas.
  final MoneyAmount salesTotal;

  /// Soma das notas de entrada, ou `null` sem `report:financial`.
  final MoneyAmount? purchasesTotal;

  /// Ticket médio das saídas.
  final MoneyAmount averageTicket;

  /// Notas confirmadas (entrada + saída).
  final int invoiceCount;

  /// Notas de saída confirmadas.
  final int exitInvoiceCount;

  /// Notas de entrada confirmadas.
  final int entryInvoiceCount;

  /// SKUs com saldo no mínimo ou abaixo.
  final int productsBelowMinimum;

  /// Serializa o consolidado.
  Map<String, dynamic> toJson() => _$ReportOverviewToJson(this);
}

/// Recorte da nota num movimento de produto.
@JsonSerializable()
final class ReportInvoiceRef {
  /// Cria o recorte.
  const new({
    required this.id,
    required this.number,
    required this.type,
    required this.status,
    required this.issueDate,
    required this.totalValue,
    this.customerId,
    this.supplierId,
    this.customerName,
    this.supplierName,
  });

  /// Lê o recorte.
  factory fromJson(Map<String, dynamic> json) => _$ReportInvoiceRefFromJson(json);

  /// UUID da nota.
  final String id;

  /// Número sequencial.
  final int number;

  /// Entrada ou saída.
  final InvoiceType type;

  /// Situação.
  final InvoiceStatus status;

  /// Emissão.
  final CalendarDate issueDate;

  /// Total da nota.
  final MoneyAmount totalValue;

  /// Cliente, ou `null`.
  final String? customerId;

  /// Fornecedor, ou `null`.
  final String? supplierId;

  /// Nome do cliente, ou `null`.
  final String? customerName;

  /// Nome do fornecedor, ou `null`.
  final String? supplierName;

  /// Serializa o recorte.
  Map<String, dynamic> toJson() => _$ReportInvoiceRefToJson(this);
}

/// Item da nota no movimento de produto.
@JsonSerializable()
final class ReportInvoiceItemRef {
  /// Cria o item.
  const new({
    required this.id,
    required this.productId,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.discount,
    required this.totalValue,
    this.unitCost,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) =>
      _$ReportInvoiceItemRefFromJson(json);

  /// UUID do item.
  final String id;

  /// Produto.
  final String productId;

  /// Descrição congelada.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Custo unitário, ou `null` sem permissão.
  final MoneyAmount? unitCost;

  /// Desconto do item.
  final MoneyAmount discount;

  /// Total do item.
  final MoneyAmount totalValue;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$ReportInvoiceItemRefToJson(this);
}

/// Movimento de produto em nota.
@JsonSerializable()
final class ProductInvoiceMovement {
  /// Cria o movimento.
  const new({required this.invoice, required this.item});

  /// Lê o movimento.
  factory fromJson(Map<String, dynamic> json) =>
      _$ProductInvoiceMovementFromJson(json);

  /// Nota.
  final ReportInvoiceRef invoice;

  /// Item.
  final ReportInvoiceItemRef item;

  /// Serializa o movimento.
  Map<String, dynamic> toJson() => _$ProductInvoiceMovementToJson(this);
}

/// Totais de entrada e saída de um produto no período.
@JsonSerializable()
final class ProductMovementSummary {
  /// Cria o resumo.
  const new({
    required this.totalEntryQuantity,
    required this.totalExitQuantity,
    required this.totalEntryValue,
    required this.totalExitValue,
    required this.balanceQuantity,
    required this.balanceValue,
  });

  /// Lê o resumo.
  factory fromJson(Map<String, dynamic> json) =>
      _$ProductMovementSummaryFromJson(json);

  /// Quantidade de entrada.
  final int totalEntryQuantity;

  /// Quantidade de saída.
  final int totalExitQuantity;

  /// Valor de entrada.
  final MoneyAmount totalEntryValue;

  /// Valor de saída.
  final MoneyAmount totalExitValue;

  /// Saldo de quantidade no período.
  final int balanceQuantity;

  /// Saldo de valor no período.
  final MoneyAmount balanceValue;

  /// Serializa o resumo.
  Map<String, dynamic> toJson() => _$ProductMovementSummaryToJson(this);
}

/// Relatório de movimentos de um produto.
@JsonSerializable()
final class ProductMovementsReport {
  /// Cria o relatório.
  const new({
    required this.categoryName,
    required this.entries,
    required this.exits,
    required this.summary,
  });

  /// Lê o relatório.
  factory fromJson(Map<String, dynamic> json) =>
      _$ProductMovementsReportFromJson(json);

  /// Nome da categoria, ou texto vazio sem categoria.
  final String categoryName;

  /// Entradas.
  final List<ProductInvoiceMovement> entries;

  /// Saídas.
  final List<ProductInvoiceMovement> exits;

  /// Totais.
  final ProductMovementSummary summary;

  /// Serializa o relatório.
  Map<String, dynamic> toJson() => _$ProductMovementsReportToJson(this);
}

/// Consolidado de ordens de serviço no período.
@JsonSerializable()
final class ServiceOrdersReport {
  /// Cria o consolidado.
  const new({
    required this.openedCount,
    required this.deliveredCount,
    required this.cancelledCount,
    required this.laborTotal,
    required this.partsTotal,
    this.averageDurationHours,
  });

  /// Lê o consolidado.
  factory fromJson(Map<String, dynamic> json) =>
      _$ServiceOrdersReportFromJson(json);

  /// Ordens abertas no período.
  final int openedCount;

  /// Ordens entregues no período.
  final int deliveredCount;

  /// Ordens canceladas no período.
  final int cancelledCount;

  /// Duração média em horas, ou `null` sem amostra.
  final double? averageDurationHours;

  /// Faturamento de mão de obra.
  final MoneyAmount laborTotal;

  /// Faturamento de peças.
  final MoneyAmount partsTotal;

  /// Serializa o consolidado.
  Map<String, dynamic> toJson() => _$ServiceOrdersReportToJson(this);
}

/// Receita de uma forma de pagamento.
@JsonSerializable()
final class FinancialByMethod {
  /// Cria a linha.
  const new({
    required this.paymentMethodId,
    required this.methodName,
    required this.amount,
    required this.feeAmount,
    required this.netAmount,
  });

  /// Lê a linha.
  factory fromJson(Map<String, dynamic> json) =>
      _$FinancialByMethodFromJson(json);

  /// Forma.
  final String paymentMethodId;

  /// Nome da forma.
  final String methodName;

  /// Bruto.
  final MoneyAmount amount;

  /// Taxas.
  final MoneyAmount feeAmount;

  /// Líquido.
  final MoneyAmount netAmount;

  /// Serializa a linha.
  Map<String, dynamic> toJson() => _$FinancialByMethodToJson(this);
}

/// Relatório financeiro.
@JsonSerializable()
final class FinancialReport {
  /// Cria o relatório.
  const new({
    required this.revenue,
    required this.fees,
    required this.net,
    required this.cost,
    required this.margin,
    required this.byMethod,
  });

  /// Lê o relatório.
  factory fromJson(Map<String, dynamic> json) => _$FinancialReportFromJson(json);

  /// Receita bruta.
  final MoneyAmount revenue;

  /// Taxas.
  final MoneyAmount fees;

  /// Líquido.
  final MoneyAmount net;

  /// Custo da mercadoria.
  final MoneyAmount cost;

  /// Margem.
  final MoneyAmount margin;

  /// Receita por forma.
  final List<FinancialByMethod> byMethod;

  /// Serializa o relatório.
  Map<String, dynamic> toJson() => _$FinancialReportToJson(this);
}
