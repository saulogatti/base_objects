import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:base_objects/src/api/wire_enums.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stock.g.dart';

/// Saldo de um produto na loja (`API.md` §9).
@JsonSerializable()
final class StockBalance {
  /// Cria o saldo.
  const StockBalance({
    required this.storeId,
    required this.productId,
    required this.code,
    required this.name,
    required this.quantity,
    required this.minStock,
    required this.needsRestock,
  });

  /// Lê o saldo.
  factory StockBalance.fromJson(Map<String, dynamic> json) => _$StockBalanceFromJson(json);

  /// Loja.
  final String storeId;

  /// Produto.
  final String productId;

  /// Código interno.
  final String code;

  /// Nome do produto.
  final String name;

  /// Saldo inteiro.
  final int quantity;

  /// Mínimo da loja.
  final int minStock;

  /// Se o saldo está no mínimo ou abaixo. Calculado no servidor.
  final bool needsRestock;

  /// Serializa o saldo.
  Map<String, dynamic> toJson() => _$StockBalanceToJson(this);
}

/// Movimento de estoque (`API.md` §9).
@JsonSerializable()
final class StockMovement {
  /// Cria o movimento.
  const StockMovement({
    required this.id,
    required this.storeId,
    required this.productId,
    required this.quantity,
    required this.reason,
    required this.createdAt,
    this.unitCost,
    this.referenceType,
    this.referenceId,
    this.notes,
    this.createdBy,
  });

  /// Lê o movimento.
  factory StockMovement.fromJson(Map<String, dynamic> json) => _$StockMovementFromJson(json);

  /// UUID.
  final String id;

  /// Loja.
  final String storeId;

  /// Produto.
  final String productId;

  /// Quantidade inteira. Negativa sai.
  final int quantity;

  /// Motivo.
  final StockReason reason;

  /// Custo unitário, ou `null`.
  final MoneyAmount? unitCost;

  /// Tipo da referência, ou `null`.
  final String? referenceType;

  /// Id da referência, ou `null`.
  final String? referenceId;

  /// Observação, ou `null`.
  final String? notes;

  /// Autor, ou `null`.
  final String? createdBy;

  /// Inclusão.
  final ApiInstant createdAt;

  /// Serializa o movimento.
  Map<String, dynamic> toJson() => _$StockMovementToJson(this);
}

/// Item do ajuste: `countedQuantity` ou `delta`, nunca os dois.
@JsonSerializable()
final class StockAdjustmentItem {
  /// Cria o item.
  const StockAdjustmentItem({
    required this.productId,
    this.countedQuantity,
    this.delta,
    this.unitCost,
  });

  /// Lê o item.
  factory StockAdjustmentItem.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentItemFromJson(json);

  /// Produto.
  final String productId;

  /// Saldo contado. Exclusivo com [delta].
  final int? countedQuantity;

  /// Movimento direto, diferente de zero. Exclusivo com [countedQuantity].
  final int? delta;

  /// Custo da entrada, ou `null`.
  final MoneyAmount? unitCost;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$StockAdjustmentItemToJson(this);
}

/// Corpo de `POST .../stock/adjustments`.
@JsonSerializable()
final class StockAdjustmentRequest {
  /// Cria o corpo.
  const StockAdjustmentRequest({
    required this.operationId,
    required this.reason,
    required this.notes,
    required this.items,
  });

  /// Lê o corpo.
  factory StockAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$StockAdjustmentRequestFromJson(json);

  /// Chave de idempotência.
  final String operationId;

  /// `adjustment`, `loss` ou `purchase`.
  final StockReason reason;

  /// Justificativa obrigatória.
  final String notes;

  /// Itens do ajuste.
  final List<StockAdjustmentItem> items;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$StockAdjustmentRequestToJson(this);
}

/// Item da transferência.
@JsonSerializable()
final class StockTransferItem {
  /// Cria o item.
  const StockTransferItem({required this.id, required this.productId, required this.quantity});

  /// Lê o item.
  factory StockTransferItem.fromJson(Map<String, dynamic> json) =>
      _$StockTransferItemFromJson(json);

  /// UUID do item.
  final String id;

  /// Produto.
  final String productId;

  /// Quantidade inteira positiva.
  final int quantity;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$StockTransferItemToJson(this);
}

/// Transferência entre lojas (`API.md` §9.2).
@JsonSerializable()
final class StockTransfer {
  /// Cria a transferência.
  const StockTransfer({
    required this.id,
    required this.originStoreId,
    required this.targetStoreId,
    required this.status,
    required this.items,
    required this.createdAt,
    this.notes,
    this.createdBy,
    this.receivedBy,
    this.receivedAt,
    this.cancelledBy,
    this.cancelledAt,
    this.cancelReason,
  });

  /// Lê a transferência.
  factory StockTransfer.fromJson(Map<String, dynamic> json) => _$StockTransferFromJson(json);

  /// UUID.
  final String id;

  /// Loja de origem.
  final String originStoreId;

  /// Loja de destino.
  final String targetStoreId;

  /// Situação.
  final StockTransferStatus status;

  /// Observação, ou `null`.
  final String? notes;

  /// Itens.
  final List<StockTransferItem> items;

  /// Autor da criação, ou `null`.
  final String? createdBy;

  /// Quem recebeu, ou `null`.
  final String? receivedBy;

  /// Criação.
  final ApiInstant createdAt;

  /// Recebimento, ou `null`.
  final ApiInstant? receivedAt;

  /// Quem cancelou, ou `null`.
  final String? cancelledBy;

  /// Cancelamento, ou `null`.
  final ApiInstant? cancelledAt;

  /// Motivo do cancelamento, ou `null`.
  final String? cancelReason;

  /// Serializa a transferência.
  Map<String, dynamic> toJson() => _$StockTransferToJson(this);
}

/// Item do corpo de criação da transferência. Sem id.
@JsonSerializable()
final class StockTransferItemRequest {
  /// Cria o item.
  const StockTransferItemRequest({required this.productId, required this.quantity});

  /// Lê o item.
  factory StockTransferItemRequest.fromJson(Map<String, dynamic> json) =>
      _$StockTransferItemRequestFromJson(json);

  /// Produto.
  final String productId;

  /// Quantidade inteira positiva.
  final int quantity;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$StockTransferItemRequestToJson(this);
}

/// Corpo de `POST .../stock/transfers`.
@JsonSerializable()
final class CreateStockTransferRequest {
  /// Cria o corpo.
  const CreateStockTransferRequest({
    required this.id,
    required this.targetStoreId,
    required this.items,
    this.notes,
  });

  /// Lê o corpo.
  factory CreateStockTransferRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateStockTransferRequestFromJson(json);

  /// UUID da transferência, gerado pelo app.
  final String id;

  /// Loja de destino. A origem é o `{storeId}` do caminho.
  final String targetStoreId;

  /// Observação, ou `null`.
  final String? notes;

  /// Itens.
  final List<StockTransferItemRequest> items;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CreateStockTransferRequestToJson(this);
}

/// Corpo de `POST .../transfers/{id}/cancel`.
@JsonSerializable()
final class CancelStockTransferRequest {
  /// Cria o corpo.
  const CancelStockTransferRequest({required this.reason});

  /// Lê o corpo.
  factory CancelStockTransferRequest.fromJson(Map<String, dynamic> json) =>
      _$CancelStockTransferRequestFromJson(json);

  /// Motivo.
  final String reason;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$CancelStockTransferRequestToJson(this);
}
