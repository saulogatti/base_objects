import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/quantity_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice_draft.g.dart';

/// Item enviado no rascunho. Sem totais calculados.
@JsonSerializable()
final class InvoiceItemDraft {
  /// Cria o item.
  const new({
    required this.id,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    this.productId,
    this.serviceId,
    this.discount,
    this.unitCost,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceItemDraftFromJson(json);

  /// Esquema JSON gerado para o item.
  static Map<String, Object> get schema => _$InvoiceItemDraftJsonSchema;

  /// UUID do item.
  final String id;

  /// Peça, ou `null` se for serviço.
  final String? productId;

  /// Mão de obra, ou `null` se for peça.
  final String? serviceId;

  /// Nome congelado.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Desconto do item, ou `null`.
  final MoneyAmount? discount;

  /// Custo unitário informado pelo cliente, ou `null`.
  final MoneyAmount? unitCost;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$InvoiceItemDraftToJson(this);
}

/// Corpo de `PUT .../invoices/{id}` (rascunho).
@JsonSerializable()
final class InvoiceDraft {
  /// Cria o rascunho.
  const new({
    required this.type,
    required this.items,
    this.customerId,
    this.supplierId,
    this.issueDate,
    this.discount,
    this.notes,
  });

  /// Lê o rascunho.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceDraftFromJson(json);

  /// Esquema JSON gerado para o rascunho.
  static Map<String, Object> get schema => _$InvoiceDraftJsonSchema;

  /// Entrada ou saída.
  final InvoiceType type;

  /// Cliente, obrigatório em saída.
  final String? customerId;

  /// Fornecedor, obrigatório em entrada. No app o campo se chama `companyId`.
  final String? supplierId;

  /// Emissão. O servidor usa hoje quando vem `null`.
  final CalendarDate? issueDate;

  /// Desconto no total, ou `null` (o servidor grava zero).
  final MoneyAmount? discount;

  /// Observações, ou `null`.
  final String? notes;

  /// Itens. Substituem os anteriores.
  final List<InvoiceItemDraft> items;

  /// Serializa o rascunho.
  Map<String, dynamic> toJson() => _$InvoiceDraftToJson(this);
}
