import 'package:base_objects/src/models/default/default_object.dart';

/// Dados comuns às entidades que representam pessoas (domínio).
///
/// {@category modelos}
/// {@subCategory Cadastros}
///
/// Estende [DefaultObject] adicionando nome, e-mail e telefone.
/// Subclasses concretas: [Customer], [Company], [User].
abstract class PersonDefault extends DefaultObject {
  /// Cria a entidade de pessoa.
  new({required this.name, this.email, this.phone, super.id, super.createdAt, super.updatedAt});

  /// Endereço de e-mail (opcional).
  final String? email;

  /// Nome completo da pessoa ou razão social da empresa.
  final String name;

  /// Número de telefone (opcional).
  final String? phone;
}
