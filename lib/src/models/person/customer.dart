import 'package:base_objects/src/models/default/people_data.dart';
import 'package:base_objects/src/models/document/cpf.dart';
import 'package:base_objects/src/models/person/address.dart';
import 'package:base_objects/src/models/person/person.dart';

/// Cliente pessoa física (domínio).
///
/// {@category modelos}
/// {@subCategory Cadastros}
///
/// Compartilhado entre as lojas da rede, de propósito: quem compra numa
/// unidade pode ser atendido na outra, e o histórico de compras e consertos
/// precisa acompanhar a pessoa — não o balcão onde ela foi cadastrada.
///
/// Herda [PersonDefault] (nome, e-mail, telefone).
class Customer extends Person<Cpf> {
  /// Cria um cliente.
  new({
    required super.name,
    required super.document,
    this.address,
    super.id,
    super.email,
    super.phone,
    super.createdAt,
    super.updatedAt,
  });

  /// Endereço do cliente.
  final Address? address;

  /// Cria uma cópia com os campos informados alterados.
  Customer copyWith({
    String? name,
    Cpf? document,
    String? email,
    String? phone,
    Address? address,
    DateTime? updatedAt,
  }) => Customer(
    id: id,
    name: name ?? this.name,
    document: document ?? this.document,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    address: address ?? this.address,
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  @override
  String toString() => 'Customer(name: $name, document: $document, phone: $phone)';
}
