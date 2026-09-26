// ignore_for_file: avoid_print

import 'package:base_objects/base_objects.dart';
import 'package:base_objects/src/models/document/cpf.dart';

void main() {
  final SystemModel system = SystemModel(
    id: '1',
    createdAt: DateTime.now(),
    updatedAt: DateTime.now(),
    systemUser: SystemUserModel(
      name: 'John Doe',
      document: Cpf('123.456.789-09'),
      email: 'john.doe@example.com',
      id: '1',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    activationKey: SystemActivationKeyModel(
      activationKey: '1234567890',
      id: '1',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    ),
    serverUrl: 'https://example.com',
  );
  print(system.toJson());
  print(SystemModel.schema);
  print(SystemUserModel.schema);
  print(SystemActivationKeyModel.schema);
}
