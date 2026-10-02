import 'package:base_objects/src/api/installation/installation.dart';
import 'package:base_objects/src/api/installation/system_model.dart';
import 'package:base_objects/src/api/installation/system_user_model.dart';

/// Contrato da instalação para o handler e para stubs de teste.
abstract interface class InstallationApi {
  /// `GET /installation/system-user`. Ausente → 404.
  Future<SystemUserModel> getSystemUser();

  /// `POST /installation`. Já instalado → 409. Chave errada → 401.
  Future<SystemModel> install({required InstallationRequest request});

  /// `GET /installation/status`.
  Future<bool> isInstalled();
}
