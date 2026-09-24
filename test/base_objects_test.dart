import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final system = SystemModel(
      id: '1',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      systemUser: SystemUserModel(
        name: 'John Doe',
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

    test('First Test', () {
      expect(system.toJson(), isNotEmpty);
      expect(SystemModel.schema, isNotEmpty);
      expect(SystemUserModel.schema, isNotEmpty);
      expect(SystemActivationKeyModel.schema, isNotEmpty);
    });
  });
}
