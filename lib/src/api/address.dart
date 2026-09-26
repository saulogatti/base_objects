import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

/// Endereço trafegado em loja, cliente e fornecedor (`API.md` §1.3).
///
/// Campos ausentes saem como `null`.
@JsonSerializable()
final class Address {
  /// Cria o endereço.
  const Address({this.street, this.zipCode, this.neighborhood, this.city, this.state});

  /// Lê o objeto da §1.3.
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  /// Logradouro.
  final String? street;

  /// CEP, com ou sem máscara.
  final String? zipCode;

  /// Bairro.
  final String? neighborhood;

  /// Cidade.
  final String? city;

  /// UF de duas letras.
  final String? state;

  /// Serializa as cinco chaves, com `null` quando não informado.
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
