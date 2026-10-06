import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('User', () {
    final instant = ApiInstant(value: DateTime.utc(2026, 10, 2));

    test('toJson and fromJson work correctly', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        phone: '123456789',
        isActive: true,
        isSuperadmin: false,
        lastLoginAt: instant,
        createdAt: instant.value,
        updatedAt: instant.value,
      );

      final json = user.toJson();
      expect(json['id'], '1');
      expect(json['name'], 'John Doe');
      expect(json['email'], 'john.doe@example.com');
      expect(json['phone'], '123456789');
      expect(json['isActive'], isTrue);
      expect(json['isSuperadmin'], isFalse);
      expect((json['lastLoginAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');
      expect((json['createdAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');
      expect((json['updatedAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');

      final fromJson = User.fromJson(json);
      expect(fromJson.id, user.id);
      expect(fromJson.name, user.name);
      expect(fromJson.email, user.email);
      expect(fromJson.phone, user.phone);
      expect(fromJson.isActive, user.isActive);
      expect(fromJson.isSuperadmin, user.isSuperadmin);
      expect(fromJson.lastLoginAt?.value, user.lastLoginAt?.value);
      expect(fromJson.createdAt.value, user.createdAt.value);
      expect(fromJson.updatedAt.value, user.updatedAt.value);
    });

    test('copyWith works correctly', () {
      final user = User(
        id: '1',
        name: 'John Doe',
        email: 'john.doe@example.com',
        phone: '123456789',
        isActive: true,
        isSuperadmin: false,
        lastLoginAt: instant,
        createdAt: instant.value,
        updatedAt: instant.value,
      );

      final updatedUser = user.copyWith(
        name: 'Jane Doe',
        email: 'jane.doe@example.com',
        isActive: false,
        lastLoginAt: ApiInstant(value: DateTime.utc(2026, 10, 3)),
      );

      expect(updatedUser.id, '1');
      expect(updatedUser.name, 'Jane Doe');
      expect(updatedUser.email, 'jane.doe@example.com');
      expect(updatedUser.phone, '123456789');
      expect(updatedUser.isActive, isFalse);
      expect(updatedUser.isSuperadmin, isFalse);
      expect(updatedUser.lastLoginAt?.value, DateTime.utc(2026, 10, 3));
      expect(updatedUser.createdAt.value, instant.value);
      expect(updatedUser.updatedAt.value, instant.value);
    });

    test('schema is defined', () {
      expect(User.schema, isNotEmpty);
    });
  });
}
