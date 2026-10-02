import 'package:base_objects/src/api/core/api_time.dart';
import 'package:base_objects/src/api/core/money_amount.dart';
import 'package:base_objects/src/api/core/quantity_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_order_entry.g.dart';

/// Checklist de entrada do aparelho (`API.md` §11).
@JsonSerializable()
final class DeviceEntryCondition {
  /// Cria o checklist.
  const new({
    required this.screenCracked,
    required this.touchWorking,
    required this.housingDamaged,
    required this.waterDamage,
    required this.batterySwollen,
    required this.buttonsWorking,
    required this.cameraWorking,
    required this.chargingWorking,
    this.notes,
  });

  /// Lê o checklist.
  factory fromJson(Map<String, dynamic> json) => _$DeviceEntryConditionFromJson(json);

  /// Se a tela está trincada.
  final bool screenCracked;

  /// Se o toque funciona.
  final bool touchWorking;

  /// Se a carcaça está danificada.
  final bool housingDamaged;

  /// Se há dano por líquido.
  final bool waterDamage;

  /// Se a bateria está inchada.
  final bool batterySwollen;

  /// Se os botões funcionam.
  final bool buttonsWorking;

  /// Se a câmera funciona.
  final bool cameraWorking;

  /// Se a carga funciona.
  final bool chargingWorking;

  /// Observação, ou `null`.
  final String? notes;

  /// Serializa o checklist.
  Map<String, dynamic> toJson() => _$DeviceEntryConditionToJson(this);
}

/// Leitura do checklist [DeviceEntryCondition].
extension DeviceEntryConditionDamage on DeviceEntryCondition {
  /// Se o checklist registra algum dano físico na entrada.
  bool get hasRecordedDamage => screenCracked || housingDamaged || waterDamage || batterySwollen;
}

/// Item do orçamento na resposta.
@JsonSerializable()
final class ServiceOrderItem {
  /// Cria o item.
  const new({
    required this.id,
    required this.serviceOrderId,
    required this.description,
    required this.quantity,
    required this.unitPrice,
    required this.totalValue,
    required this.createdAt,
    this.productId,
    this.serviceId,
    this.unitCost,
  });

  /// Lê o item.
  factory fromJson(Map<String, dynamic> json) => _$ServiceOrderItemFromJson(json);

  /// UUID.
  final String id;

  /// Ordem dona do item.
  final String serviceOrderId;

  /// Peça, ou `null`.
  final String? productId;

  /// Mão de obra, ou `null`.
  final String? serviceId;

  /// Descrição.
  final String description;

  /// Quantidade, escala 3.
  final QuantityAmount quantity;

  /// Preço unitário.
  final MoneyAmount unitPrice;

  /// Custo unitário, ou `null`.
  final MoneyAmount? unitCost;

  /// Total calculado.
  final MoneyAmount totalValue;

  /// Inclusão.
  final ApiInstant createdAt;

  /// Serializa o item.
  Map<String, dynamic> toJson() => _$ServiceOrderItemToJson(this);
}

/// Natureza do [ServiceOrderItem].
extension ServiceOrderItemKind on ServiceOrderItem {
  /// Se o item é peça, que dá baixa no estoque.
  bool get isPart => productId != null;

  /// Se o item é mão de obra, que não movimenta estoque.
  bool get isService => serviceId != null;
}
