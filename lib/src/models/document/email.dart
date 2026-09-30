import 'package:base_objects/src/constants/app_regular_exp.dart';
import 'package:base_objects/src/models/document/document.dart';

class Email extends Document {
  new(super.value);

  @override
  String get formatted => value.trim();

  @override
  String? validateDocument() {
    return formatted.isNotEmpty && AppRegularExp.emailRegExp.hasMatch(formatted)
        ? null
        : "e-mail invalido";
  }
}
