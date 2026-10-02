import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final accepted = SystemModel(
      id: '1',
      systemUser: const SystemUserModel(
        name: 'John Doe',
        document: '12345678909',
        email: 'john.doe@example.com',
        id: '1',
      ),
      serverUrl: 'https://example.com',
      createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
      updatedAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
    );

    test('First Test', () {
      expect(accepted.toJson(), isNotEmpty);
      expect(SystemModel.schema, isNotEmpty);
      expect(SystemUserModel.schema, isNotEmpty);
      expect(accepted.toJson().containsKey('activationKey'), isFalse);
    });
  });
}
