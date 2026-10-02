import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/wire_enums.dart';
import 'package:base_objects/src/api/invoice/invoice_lines.dart';
import 'package:json_annotation/json_annotation.dart';

part 'invoice.g.dart';

/// Nota de venda ou compra (`API.md` §10).
@JsonSerializable()
final class Invoice {
  /// Cria a nota.
  const new({
    required this.id,
    required this.storeId,
    required this.number,
    required this.type,
    required this.status,
    required this.issueDate,
    required this.discount,
    required this.subtotal,
    required this.totalValue,
    required this.items,
    required this.payments,
    required this.createdAt,
    required this.updatedAt,
    this.customerId,
    this.supplierId,
    this.customerName,
    this.supplierName,
    this.notes,
    this.createdBy,
    this.cancelledBy,
    this.cancelledAt,
    this.cancelReason,
  });

  /// Lê a nota.
  factory fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);

  /// Esquema JSON gerado para a nota.
  static Map<String, Object> get schema => _$InvoiceJsonSchema;

  /// UUID.
  final String id;

  /// Loja. Vem do caminho, não do corpo.
  final String storeId;

  /// Sequencial por loja.
  final int number;

  /// Entrada ou saída.
  final InvoiceType type;

  /// Situação. Muda só por comando.
  final InvoiceStatus status;

  /// Cliente, ou `null` na entrada.
  final String? customerId;

  /// Fornecedor, ou `null` na saída.
  final String? supplierId;

  /// Nome do cliente na listagem, ou `null`.
  final String? customerName;

  /// Nome do fornecedor na listagem, ou `null`.
  final String? supplierName;

  /// Emissão.
  final CalendarDate issueDate;

  /// Desconto no total.
  final MoneyAmount discount;

  /// Soma dos itens, calculada no servidor.
  final MoneyAmount subtotal;

  /// Total (`subtotal` menos [discount]).
  final MoneyAmount totalValue;

  /// Observações, ou `null`.
  final String? notes;

  /// Itens.
  final List<InvoiceItem> items;

  /// Pagamentos. Vazio fora da saída confirmada.
  final List<InvoicePayment> payments;

  /// Autor, ou `null`.
  final String? createdBy;

  /// Quem cancelou, ou `null`.
  final String? cancelledBy;

  /// Cancelamento, ou `null`.
  final ApiInstant? cancelledAt;

  /// Motivo do cancelamento, ou `null`.
  final String? cancelReason;

  /// Criação.
  final ApiInstant createdAt;

  /// Última alteração.
  final ApiInstant updatedAt;

  /// Serializa a nota.
  Map<String, dynamic> toJson() => _$InvoiceToJson(this);
}
