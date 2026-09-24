import 'package:base_objects/src/models/document/email.dart';
import 'package:base_objects/src/models/person/person.dart';

/// Usuário do sistema (domínio).
///
/// {@category modelos}
/// {@subCategory Sistema}
///
/// O usuário é da **rede**, não de uma loja. O que ele pode fazer em cada
/// unidade vem do vínculo em `StoreMembership`, não de um campo aqui.
///
/// Essa separação é o que permite o caso corriqueiro de quem cobre folga na
/// outra unidade: gerente na loja A e vendedor na loja B, com um cadastro só.
/// Um nível de permissão gravado no usuário não conseguiria representar isso.
///
/// [passwordHash] é sempre calculado no servidor; o aplicativo não gera hash
/// nem mantém senha em texto.
///
/// Veja também:
/// - `StoreMembership` — papel do usuário em cada loja
/// - `Permission` — as ações que os papéis concedem
class User extends Person<Email> {
  /// Cria um usuário.
  new({
    required super.name,
    required super.document,
    super.phone,
    this.isActive = true,
    this.isSuperadmin = false,
    this.lastLoginAt,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  /// Indica usuário habilitado a entrar no sistema.
  final bool isActive;

  /// Ignora o controle de permissões. Reservado à conta de manutenção.
  final bool isSuperadmin;

  /// Último acesso bem-sucedido.
  final DateTime? lastLoginAt;

  /// Cria uma cópia com os campos informados alterados.
  User copyWith({
    String? name,

    String? phone,
    Email? document,
    bool? isActive,
    bool? isSuperadmin,
    DateTime? lastLoginAt,
    DateTime? updatedAt,
  }) => User(
    id: id,
    name: name ?? this.name,
    document: document ?? this.document,
    phone: phone ?? this.phone,

    isActive: isActive ?? this.isActive,
    isSuperadmin: isSuperadmin ?? this.isSuperadmin,
    lastLoginAt: lastLoginAt ?? this.lastLoginAt,
    createdAt: createdAt,
    updatedAt: updatedAt ?? DateTime.now(),
  );

  @override
  String toString() => 'User(name: $name, email: $email, ativo: $isActive)';
}
