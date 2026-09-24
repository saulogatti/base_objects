import 'dart:math';

import 'package:base_objects/src/constants/app_constants.dart';
import 'package:base_objects/src/models/document/document.dart';

// Validação do primeiro dígito verificador
final firstWeights = [5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];
// Validação do segundo dígito verificador
final secondWeights = [6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2];

/// CNPJ com validação de formato e dígitos verificadores.
/// Modelo novo de CNPJ, apenas numeros e letras e numeros (ex: A34.345.345/3453-45).
///
/// {@category modelos}
/// {@subCategory Cadastros}
class Cnpj extends Document {
  /// Cria uma instância de [Cnpj] com o valor informado.
  ///
  /// Lança [ValidationException] se o formato ou os dígitos forem inválidos.
  new(super.value);

  /// Expressões regulares para validar o formato do CNPJ
  /// - _cnpjRegExp: Valida o formato XX.XXX.XXX/XXXX-XX com base alfanumérica
  /// - _cnpjCleanRegExp: Valida base alfanumérica (12) + DV numérico (2)
  @override
  String get formatted {
    final d = value.trim().toUpperCase().replaceAll(
      AppRegexConstants.cnpjFormattingCharsRegExp,
      '',
    );
    if (d.length != 14) return value;
    return '${d.substring(0, 2)}.${d.substring(2, 5)}.${d.substring(5, 8)}/${d.substring(8, 12)}-${d.substring(12)}';
  }

  /// Valida se a string é um CNPJ válido.
  ///
  /// Verifica o formato e os dígitos verificadores do CNPJ.
  ///
  /// Retorna `true` se o CNPJ for válido, `false` caso contrário.
  ///
  /// Exemplo:
  /// ```dart
  /// '00.000.000/0001-91'.isValidCnpj(); // true
  /// ```
  bool get _isValidCnpj {
    final cnpj = value.trim().toUpperCase().replaceAll(
      AppRegexConstants.cnpjFormattingCharsRegExp,
      '',
    );

    if (!AppRegexConstants.cnpjCleanRegExp.hasMatch(cnpj) ||
        AppRegexConstants.cnpjAllZerosRegExp.hasMatch(cnpj)) {
      return false;
    }

    final base = cnpj.substring(0, 12);
    final informedDigit1 = int.parse(cnpj.substring(12, 13));
    final informedDigit2 = int.parse(cnpj.substring(13, 14));

    final calculatedDigit1 = _calculateCnpjDigit(base, firstWeights);
    if (calculatedDigit1 != informedDigit1) return false;

    final calculatedDigit2 = _calculateCnpjDigit('$base$calculatedDigit1', secondWeights);
    return calculatedDigit2 == informedDigit2;
  }

  bool isValidCnpj() => _isValidCnpj;

  @override
  String? validateDocument() {
    final valueCheck = value.trim().toUpperCase();
    final compactValue = valueCheck.replaceAll(AppRegexConstants.cnpjFormattingCharsRegExp, '');

    if (!AppRegexConstants.cnpjRegExp.hasMatch(valueCheck) &&
        !AppRegexConstants.cnpjCleanRegExp.hasMatch(valueCheck)) {
      return 'CNPJ deve estar no formato XX.XXX.XXX/XXXX-XX com base alfanumérica ou conter 14 caracteres (12 alfanuméricos + 2 dígitos)';
    }

    if (AppRegexConstants.cnpjAllZerosRegExp.hasMatch(compactValue)) {
      return 'CNPJ inválido - sequência zerada não é permitida';
    }

    if (!_isValidCnpj) {
      return 'CNPJ inválido - dígitos verificadores incorretos';
    }

    return null;
  }

  int _calculateCnpjDigit(String value, List<int> weights) {
    var sum = 0;

    for (var i = 0; i < value.length; i++) {
      final charValue = value.codeUnitAt(i) - 48;
      sum += charValue * weights[i];
    }

    final remainder = sum % 11;
    return remainder < 2 ? 0 : 11 - remainder;
  }

  static Cnpj defaultObject() => Cnpj('00.000.000/0001-91');

  /// Gera um CNPJ matematicamente válido.
  static String generateCnpj() {
    final random = Random();
    final digits = List.generate(12, (_) => random.nextInt(10));

    var sum1 = 0;
    for (var i = 0; i < 12; i++) {
      sum1 += digits[i] * firstWeights[i];
    }
    final remainder1 = sum1 % 11;
    digits.add(remainder1 < 2 ? 0 : 11 - remainder1);

    var sum2 = 0;
    for (var i = 0; i < 13; i++) {
      sum2 += digits[i] * secondWeights[i];
    }
    final remainder2 = sum2 % 11;
    digits.add(remainder2 < 2 ? 0 : 11 - remainder2);

    return digits.join();
  }
}
