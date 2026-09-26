import 'package:base_objects/src/api/address.dart';
import 'package:base_objects/src/api/api_time.dart';
import 'package:json_annotation/json_annotation.dart';

part 'party.g.dart';

/// Cliente da rede (`API.md` §7.1).
///
/// `cpf` é string de dígitos ou `null` (o app hoje exige o campo; a API segue
/// o SQL). `id` e os instantes podem ser `null` no PUT.
@JsonSerializable()
final class Customer {
  /// Cria o cliente.
  const new({
    required this.name,
    required this.isActive,
    this.id,
    this.cpf,
    this.email,
    this.phone,
    this.address,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o cliente.
  factory fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

  /// UUID. Opcional no corpo; obrigatório na resposta.
  final String? id;

  /// Nome.
  final String name;

  /// CPF só com dígitos, ou `null`.
  final String? cpf;

  /// E-mail, ou `null`.
  final String? email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Endereço, ou `null`.
  final Address? address;

  /// Observações, ou `null`.
  final String? notes;

  /// Se o cadastro está ativo.
  final bool isActive;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa o cliente.
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}

/// Aparelho do cliente (`API.md` §7.2).
@JsonSerializable()
final class Device {
  /// Cria o aparelho.
  const new({
    required this.customerId,
    required this.brand,
    required this.model,
    this.id,
    this.color,
    this.imei,
    this.serialNumber,
    this.notes,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o aparelho.
  factory fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  /// UUID. Opcional no corpo; obrigatório na resposta.
  final String? id;

  /// Dono do aparelho.
  final String customerId;

  /// Marca.
  final String brand;

  /// Modelo.
  final String model;

  /// Cor, ou `null`.
  final String? color;

  /// IMEI, ou `null`.
  final String? imei;

  /// Número de série, ou `null`.
  final String? serialNumber;

  /// Observações, ou `null`.
  final String? notes;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa o aparelho.
  Map<String, dynamic> toJson() => _$DeviceToJson(this);
}

/// Fornecedor (`API.md` §7.3). No app o mesmo cadastro se chama company.
///
/// `cnpj` é string de dígitos ou `null`.
@JsonSerializable()
final class Supplier {
  /// Cria o fornecedor.
  const new({
    required this.name,
    required this.isActive,
    this.id,
    this.cnpj,
    this.email,
    this.phone,
    this.address,
    this.createdAt,
    this.updatedAt,
  });

  /// Lê o fornecedor.
  factory fromJson(Map<String, dynamic> json) => _$SupplierFromJson(json);

  /// UUID. Opcional no corpo; obrigatório na resposta.
  final String? id;

  /// Nome ou razão social.
  final String name;

  /// CNPJ só com dígitos, ou `null`.
  final String? cnpj;

  /// E-mail, ou `null`.
  final String? email;

  /// Telefone, ou `null`.
  final String? phone;

  /// Endereço, ou `null`.
  final Address? address;

  /// Se o cadastro está ativo.
  final bool isActive;

  /// Criação, ou `null` no corpo de escrita.
  final ApiInstant? createdAt;

  /// Última alteração, ou `null` no corpo de escrita.
  final ApiInstant? updatedAt;

  /// Serializa o fornecedor.
  Map<String, dynamic> toJson() => _$SupplierToJson(this);
}
