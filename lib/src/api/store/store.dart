import 'package:base_objects/src/api/address_entry.dart';
import 'package:base_objects/src/api/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'store.g.dart';

/// Loja (`API.md` §5).
///
/// `id`, `createdAt` e `updatedAt` podem ser `null` no corpo de criação.
/// A resposta os preenche. `cnpj` trafega como string de dígitos, ou `null`.
@JsonSerializable()
final class Store {
  /// Cria a loja.
  const new({
    required this.name,
    required this.isActive,
    this.id,
    this.legalName,
    this.cnpj,
    this.email,
    this.phone,
    this.address,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê a loja.
  factory fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  /// UUID. Opcional na criação.
  final String? id;

  /// Nome de exibição.
  final String name;

  /// Razão social, ou `null`.
  final String? legalName;

  /// CNPJ só com dígitos, ou `null`.
  final String? cnpj;

  /// E-mail, ou `null`.
  final String? email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Endereço, ou `null`.
  final AddressEntry? address;

  /// Se a unidade está em operação.
  final bool isActive;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa a loja.
  Map<String, dynamic> toJson() => _$StoreToJson(this);
}
