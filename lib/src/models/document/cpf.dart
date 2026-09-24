import 'package:base_objects/src/constants/app_constants.dart';
import 'package:base_objects/src/models/document/document.dart';
import 'package:base_objects/src/utils/string_extensions.dart';

/// CPF com validação de formato e dígitos verificadores.
///
/// {@category modelos}
/// {@subCategory Cadastros}
class Cpf extends Document {
  /// Cria uma instância de [Cpf] com o valor informado.
  ///
  new(super.value);

  /// Expressões regulares para validar o formato do CPF
  /// - _cpfRegExp: Valida o formato XXX.XXX.XXX-XX
  /// - _cpfCleanRegExp: Valida apenas os 11 dígitos numéricos

  @override
  String get formatted {
    final d = value.replaceAll(AppRegexConstants.nonDigitRegExp, '');
    if (d.length != 11) return value;
    return '${d.substring(0, 3)}.${d.substring(3, 6)}.${d.substring(6, 9)}-${d.substring(9)}';
  }

  @override
  String? validateDocument() {
    final valueCheck = value.trim();
    if (valueCheck == '123.456.789-09') {
      return null;
    }

    if (!AppRegexConstants.cpfRegExp.hasMatch(valueCheck) &&
        !AppRegexConstants.cpfCleanRegExp.hasMatch(valueCheck)) {
      return 'CPF deve estar no formato XXX.XXX.XXX-XX ou conter apenas 11 dígitos';
    }

    if (!valueCheck.isValidCpf()) {
      return 'CPF inválido - dígitos verificadores incorretos ou sequência repetida';
    }

    return null;
  }

  static Cpf defaultObject() => Cpf('123.456.789-09');
}
