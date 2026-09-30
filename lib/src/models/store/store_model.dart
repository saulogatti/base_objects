import 'package:base_objects/src/models/default/default_object.dart';
import 'package:base_objects/src/models/document/cnpj.dart';
import 'package:base_objects/src/models/person/address.dart';

/// Unidade física da rede (domínio).
///
/// {@category modelos}
/// {@subCategory Cadastros}
///
/// Toda operação que movimenta valor ou mercadoria — venda, ordem de serviço,
/// estoque, caixa — pertence a uma loja. Os cadastros (catálogo, clientes,
/// fornecedores, usuários) são compartilhados por todas.
///
/// A loja ativa da sessão define o escopo do que o usuário enxerga e das
/// permissões que ele exerce: o mesmo funcionário pode ter papéis diferentes
/// em unidades diferentes.
class StoreModel extends DefaultObject {
  /// Cria uma loja.
  new({
    required this.name,
    required this.cnpj,
    this.legalName,
    this.email,
    this.phone,
    this.address,
    this.isActive = true,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Endereço da unidade.
  final Address? address;

  /// CNPJ da unidade.
  final Cnpj cnpj;

  /// E-mail de contato.
  final String? email;

  /// Indica unidade em operação.
  final bool isActive;

  /// Razão social.
  final String? legalName;

  /// Nome de exibição, ex.: 'Loja Centro'.
  final String name;

  /// Telefone de contato.
  final String? phone;

  /// Cria uma cópia com os campos informados alterados.
  StoreModel copyWith({
    String? name,
    String? legalName,
    Cnpj? cnpj,
    String? email,
    String? phone,
    Address? address,
    bool? isActive,
    DateTime? updatedAt,
  }) => StoreModel(
    id: id,
    name: name ?? this.name,
    legalName: legalName ?? this.legalName,
    cnpj: cnpj ?? this.cnpj,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    address: address ?? this.address,
    isActive: isActive ?? this.isActive,
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  @override
  String toString() {
    return '''Store(address: $address, cnpj: $cnpj, email: $email, isActive: $isActive, legalName: $legalName, name: $name, phone: $phone)''';
  }
}
