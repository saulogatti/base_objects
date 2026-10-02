import 'package:base_objects/src/api/party/party.dart';
import 'package:base_objects/src/api/service_order/service_order.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_order_listing.g.dart';

/// Cliente resumido na fila (`id`, `name`, `phone`).
@JsonSerializable()
final class ServiceOrderCustomer {
  /// Cria o resumo.
  const new({required this.id, required this.name, this.phone});

  /// Lê o resumo.
  factory fromJson(Map<String, dynamic> json) => _$ServiceOrderCustomerFromJson(json);

  /// UUID.
  final String id;

  /// Nome.
  final String name;

  /// Telefone, ou `null`.
  final String? phone;

  /// Serializa o resumo.
  Map<String, dynamic> toJson() => _$ServiceOrderCustomerToJson(this);
}

/// Linha da fila (`API.md` §11, `ServiceOrderListing`).
@JsonSerializable()
final class ServiceOrderListing {
  /// Cria a linha.
  const new({required this.order, required this.customer, required this.device});

  /// Lê a linha.
  factory fromJson(Map<String, dynamic> json) => _$ServiceOrderListingFromJson(json);

  /// Ordem sem itens e sem senha.
  final ServiceOrder order;

  /// Cliente.
  final ServiceOrderCustomer customer;

  /// Aparelho.
  final Device device;

  /// Serializa a linha.
  Map<String, dynamic> toJson() => _$ServiceOrderListingToJson(this);
}
