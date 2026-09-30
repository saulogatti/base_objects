import 'package:base_objects/src/api/api_time.dart';
import 'package:base_objects/src/api/scaled_amount.dart';
import 'package:json_annotation/json_annotation.dart';

part 'catalog.g.dart';

/// Resposta de `GET /categories/{id}/in-use`.
@JsonSerializable()
class CategoryUsage {
  /// Cria o uso.
  const new({required this.inUse, required this.productCount});

  /// Lê o uso.
  factory fromJson(Map<String, dynamic> json) => _$CategoryUsageFromJson(json);

  static const schema = _$CategoryUsageJsonSchema;

  /// Se há pelo menos um produto.
  final bool inUse;

  /// Quantos produtos apontam para a categoria.
  final int productCount;

  /// Serializa o uso.
  Map<String, dynamic> toJson() => _$CategoryUsageToJson(this);
}

/// Serviço de mão de obra (`API.md` §8.4, objeto `Service`).
@JsonSerializable()
final class LaborService {
  /// Cria o serviço.
  const new({
    required this.code,
    required this.name,
    required this.price,
    required this.isActive,
    this.id,
    this.description,
    this.estimatedHours,
    this.warrantyDays,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o serviço.
  factory fromJson(Map<String, dynamic> json) => _$LaborServiceFromJson(json);

  /// UUID. Opcional no corpo.
  final String? id;

  /// Código único.
  final String code;

  /// Nome.
  final String name;

  /// Texto livre, ou `null`.
  final String? description;

  /// Preço padrão da rede.
  final MoneyAmount price;

  /// Horas estimadas, ou `null`.
  final HoursAmount? estimatedHours;

  /// Garantia em dias. `null` no corpo: o servidor grava 90.
  final int? warrantyDays;

  /// Se o serviço está ativo na rede.
  final bool isActive;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa o serviço.
  Map<String, dynamic> toJson() => _$LaborServiceToJson(this);
}

/// Categoria do catálogo compartilhado (`API.md` §8.1).
@JsonSerializable()
final class ProductCategory {
  /// Cria a categoria.
  const new({required this.name, this.id, this.description, this.createdAt, this.updatedAt});

  /// Lê a categoria.
  factory fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);

  /// UUID. Opcional no corpo.
  final String? id;

  /// Nome único.
  final String name;

  /// Texto livre, ou `null`.
  final String? description;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa a categoria.
  Map<String, dynamic> toJson() => _$ProductCategoryToJson(this);
}

/// Resposta de `GET /products/code-availability`.
@JsonSerializable()
final class ProductCodeAvailability {
  /// Cria a resposta.
  const new({required this.available});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$ProductCodeAvailabilityFromJson(json);

  /// Se o código está livre.
  final bool available;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$ProductCodeAvailabilityToJson(this);
}

/// Resposta de `POST /products/next-code`.
@JsonSerializable()
final class ProductCodeIssued {
  /// Cria a resposta.
  const new({required this.code});

  /// Lê a resposta.
  factory fromJson(Map<String, dynamic> json) => _$ProductCodeIssuedFromJson(json);

  /// Próximo código, por exemplo `PRD-000124`.
  final String code;

  /// Serializa a resposta.
  Map<String, dynamic> toJson() => _$ProductCodeIssuedToJson(this);
}

/// Produto da rede. Sem campo de estoque (`API.md` §8.2).
///
/// `costPrice` volta `null` sem a permissão `product:view_cost`.
@JsonSerializable()
class ProductData {
  /// Cria o produto.
  const new({
    required this.code,
    required this.name,
    required this.salePrice,
    required this.isActive,
    this.id,
    this.barcode,
    this.description,
    this.categoryId,
    this.costPrice,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o produto.
  factory fromJson(Map<String, dynamic> json) => _$ProductDataFromJson(json);

  /// UUID. Opcional no corpo.
  final String? id;

  /// Código interno, único.
  final String code;

  /// Código de barras, ou `null`.
  final String? barcode;

  /// Nome.
  final String name;

  /// Descrição, ou `null`.
  final String? description;

  /// Categoria, ou `null`.
  final String? categoryId;

  /// Custo. `null` quando oculto ou ausente.
  final MoneyAmount? costPrice;

  /// Preço padrão da rede.
  final MoneyAmount salePrice;

  /// Se o produto está ativo na rede.
  final bool isActive;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa o produto.
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}

/// Produto na visão da loja (`API.md` §8.3).
@JsonSerializable()
final class StoreProduct {
  /// Cria a visão.
  const new({
    required this.storeId,
    required this.product,
    required this.salePrice,
    required this.hasStoreOverride,
    required this.stockQuantity,
    required this.minStock,
    required this.isActive,
    required this.needsRestock,
  });

  /// Lê a visão.
  factory fromJson(Map<String, dynamic> json) => _$StoreProductFromJson(json);

  /// Loja.
  final String storeId;

  /// Cadastro da rede.
  final ProductData product;

  /// Preço efetivo da loja. `null` no override não vira zero.
  final MoneyAmount salePrice;

  /// Se a loja sobrescreveu o preço do catálogo.
  final bool hasStoreOverride;

  /// Saldo inteiro.
  final int stockQuantity;

  /// Mínimo da loja.
  final int minStock;

  /// Se a loja trabalha com o item.
  final bool isActive;

  /// Se o saldo está no mínimo ou abaixo. Valor calculado no servidor.
  final bool needsRestock;

  /// Serializa a visão.
  Map<String, dynamic> toJson() => _$StoreProductToJson(this);
}

/// Corpo de `PUT .../products/{productId}/settings`.
///
/// `salePrice` `null` volta ao preço do catálogo. Não é zero.
@JsonSerializable()
final class StoreProductSettingsRequest {
  /// Cria o corpo.
  const new({required this.minStock, required this.isActive, this.salePrice});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$StoreProductSettingsRequestFromJson(json);

  /// Preço da loja, ou `null` para herdar o catálogo.
  final MoneyAmount? salePrice;

  /// Mínimo, maior ou igual a zero.
  final int minStock;

  /// Se a loja trabalha com o item.
  final bool isActive;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$StoreProductSettingsRequestToJson(this);
}

/// Serviço na visão da loja (`API.md` §8.4, objeto `StoreService`).
@JsonSerializable()
final class StoreService {
  /// Cria a visão.
  const new({
    required this.storeId,
    required this.service,
    required this.price,
    required this.hasStoreOverride,
    required this.isActive,
  });

  /// Lê a visão.
  factory fromJson(Map<String, dynamic> json) => _$StoreServiceFromJson(json);

  /// Loja.
  final String storeId;

  /// Cadastro da rede.
  final LaborService service;

  /// Preço efetivo da loja.
  final MoneyAmount price;

  /// Se a loja sobrescreveu o preço.
  final bool hasStoreOverride;

  /// Se a loja oferece o serviço.
  final bool isActive;

  /// Serializa a visão.
  Map<String, dynamic> toJson() => _$StoreServiceToJson(this);
}

/// Corpo de `PUT .../services/{serviceId}/settings`.
///
/// `price` `null` volta ao preço do catálogo.
@JsonSerializable()
final class StoreServiceSettingsRequest {
  /// Cria o corpo.
  const new({required this.isActive, this.price});

  /// Lê o corpo.
  factory fromJson(Map<String, dynamic> json) => _$StoreServiceSettingsRequestFromJson(json);

  /// Preço da loja, ou `null` para herdar o catálogo.
  final MoneyAmount? price;

  /// Se a loja oferece o serviço.
  final bool isActive;

  /// Serializa o corpo.
  Map<String, dynamic> toJson() => _$StoreServiceSettingsRequestToJson(this);
}
