import 'package:base_objects/src/api/errors/error_exception.dart';

/// Valor de um documento de identificação, com formatação e validação.
///
/// {@category modelos}
/// {@subCategory Cadastros}
abstract class Document {
  /// Armazena [value] e chama a validação definida pela subclasse.
  ///
  /// O resultado da validação é retornado por [validateDocument];
  /// lança uma exceção quando o valor é inválido.
  new(this.value) {
    final validationError = validateDocument();
    if (validationError != null) {
      throw ErrorException.validation(message: validationError, fields: {'value': value});
    }
  }

  /// Valor original do documento.
  final String value;

  /// Valor formatado para exibição.
  String get formatted;

  /// Mensagem de validação ou `null` quando o valor é válido.
  String? validateDocument();
}
