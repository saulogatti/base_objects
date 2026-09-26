import 'package:base_objects/src/models/default/default_object.dart';

/// Categoria de produtos (domínio).
///
/// {@category modelos}
/// {@subCategory Catalogo}
///
/// Faz parte do catálogo, portanto é compartilhada entre as lojas.
/// Referenciada por [Product.categoryId].
class ProductCategory extends DefaultObject {
  /// Cria uma categoria.
  new({required this.name, this.description, super.id, super.createdAt, super.updatedAt});

  /// Descrição opcional da categoria.
  final String? description;

  /// Nome da categoria. Único na rede.
  final String name;

  /// Cria uma cópia com os campos informados alterados.
  ProductCategory copyWith({String? name, String? description, DateTime? updatedAt}) =>
      ProductCategory(
        id: id,
        name: name ?? this.name,
        description: description ?? this.description,
        createdAt: createdAt,
        updatedAt: updatedAt ?? DateTime.now(),
      );

  @override
  String toString() => 'ProductCategory(name: $name)';
}
