import 'package:base_objects/src/models/document/cnpj.dart';
import 'package:base_objects/src/models/person/address.dart';
import 'package:base_objects/src/models/person/person.dart';

/// Empresa fornecedora (domínio).
///
/// {@category modelos}
/// {@subCategory Cadastros}
///
/// Corresponde à tabela `suppliers` do servidor: são as empresas de quem a
/// loja compra. Aparecem nas notas de entrada e nunca nas de saída.
///
/// Compartilhada entre as lojas, como os demais cadastros de pessoa.
/// Herda [Person] (nome, e-mail, telefone).
class Company extends Person<Cnpj> {
  /// Cria um fornecedor.
  new({
    required super.name,
    required super.document,
    this.address,
    super.id,
    super.phone,
    super.email,
    super.createdAt,
    super.updatedAt,
  });

  /// Endereço da empresa.
  final Address? address;

  /// Cria uma cópia com os campos informados alterados.
  Company copyWith({
    String? name,
    Cnpj? document,
    String? email,
    String? phone,
    Address? address,
    DateTime? updatedAt,
  }) => Company(
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
  String toString() => 'Company(name: $name, document: $document)';
}
