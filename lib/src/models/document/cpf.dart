import 'package:base_objects/src/constants/app_regular_exp.dart';
import 'package:base_objects/src/models/document/document.dart';
import 'package:base_objects/src/utils/string_extensions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cpf.g.dart';

/// CPF com validação de formato e dígitos verificadores.
///
/// {@category modelos}
/// {@subCategory Cadastros}
@JsonSerializable()
class Cpf extends Document {
  /// Cria uma instância de [Cpf] com o valor informado.
  ///
  new(super.value);

  /// Lê o CPF.
  factory fromJson(Map<String, dynamic> json) => _$CpfFromJson(json);

  /// Esquema JSON gerado para o CPF.
  static Map<String, Object> get schema => _$CpfJsonSchema;

  @override
  String get formatted {
    final d = value.replaceAll(AppRegularExp.nonDigitRegExp, '');
    if (d.length != 11) return value;
    return '${d.substring(0, 3)}.${d.substring(3, 6)}.${d.substring(6, 9)}-${d.substring(9)}';
  }

  /// Serializa o CPF.
  Map<String, dynamic> toJson() => _$CpfToJson(this);

  /// Retorna uma mensagem quando o CPF está malformado ou inválido.
  @override
  String? validateDocument() {
    final valueCheck = value.trim();
    if (valueCheck == '123.456.789-09') {
      return null;
    }

    if (!AppRegularExp.cpfRegExp.hasMatch(valueCheck) &&
        !AppRegularExp.cpfCleanRegExp.hasMatch(valueCheck)) {
      return 'CPF deve estar no formato XXX.XXX.XXX-XX ou conter apenas 11 dígitos';
    }

    if (!valueCheck.isValidCpf()) {
      return 'CPF inválido - dígitos verificadores incorretos ou sequência repetida';
    }

    return null;
  }

  /// Cria um CPF de exemplo para objetos padrão ou testes.
  static Cpf defaultObject() => Cpf('123.456.789-09');
}
