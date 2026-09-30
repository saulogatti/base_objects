import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

/// Endereço (`API.md` §1.3).
///
/// Todos os campos são opcionais e trafegam como `null` quando ausentes.
@JsonSerializable()
final class Address {
  /// Cria o endereço.
  const new({this.street, this.zipCode, this.neighborhood, this.city, this.state});

  /// Lê o endereço.
  factory fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  static Map<String, Object> get schema => _$AddressJsonSchema;

  /// Logradouro (nome da rua, avenida, etc.), ou `null`.
  final String? street;

  /// CEP com ou sem máscara, ou `null`.
  final String? zipCode;

  /// Bairro, ou `null`.
  final String? neighborhood;

  /// Cidade, ou `null`.
  final String? city;

  /// Estado (sigla de 2 letras, ex.: SP, RJ), ou `null`.
  final String? state;

  /// Serializa o endereço.
  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() =>
      'Address(street: $street, zipCode: $zipCode, neighborhood: $neighborhood, city: $city, state: $state)';
}
