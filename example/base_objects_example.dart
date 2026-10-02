// ignore_for_file: avoid_print

import 'package:base_objects/base_objects.dart';

void main() {
  const request = InstallationRequest(
    systemUser: SystemUserModel(
      name: 'John Doe',
      email: 'john.doe@example.com',
      document: '12345678909',
    ),
    activationKey: '1234567890',
    administratorPassword: 'secret',
    serverUrl: 'https://example.com',
  );
  final accepted = SystemModel(
    id: '1',
    systemUser: request.systemUser,
    serverUrl: request.serverUrl,
    createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
    updatedAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
  );
  print(request.toJson());
  print(accepted.toJson());
  print(InstallationRequest.schema);
  print(SystemModel.schema);
}
