import 'package:base_objects/src/models/default/people_data.dart';
import 'package:base_objects/src/models/document/document.dart';

/// Pessoa genérica do domínio, parametrizada pelo tipo de [Document].
///
/// {@category modelos}
/// {@subCategory Cadastros}
abstract class Person<D extends Document> extends PersonDefault {
  new({
    required super.name,
    required this.document,
    super.email,
    super.phone,
    super.id,
    super.createdAt,
    super.updatedAt,
  });

  final D document;
}
