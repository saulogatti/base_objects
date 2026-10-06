import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('Access', () {
    test('ActiveFlagRequest toJson and fromJson', () {
      const request = ActiveFlagRequest(isActive: true);
      final json = request.toJson();
      expect(json['isActive'], isTrue);
      final fromJson = ActiveFlagRequest.fromJson(json);
      expect(fromJson.isActive, isTrue);
      expect(ActiveFlagRequest.jsonSchema, isNotEmpty);
    });

    test('AssignRoleRequest toJson and fromJson', () {
      const request = AssignRoleRequest(roleCode: 'admin');
      final json = request.toJson();
      expect(json['roleCode'], 'admin');
      final fromJson = AssignRoleRequest.fromJson(json);
      expect(fromJson.roleCode, 'admin');
      expect(AssignRoleRequest.jsonSchema, isNotEmpty);
    });

    test('ChangePasswordRequest toJson and fromJson', () {
      const request = ChangePasswordRequest(
        newPassword: 'new-password',
        currentPassword: 'current-password',
      );
      final json = request.toJson();
      expect(json['newPassword'], 'new-password');
      expect(json['currentPassword'], 'current-password');
      final fromJson = ChangePasswordRequest.fromJson(json);
      expect(fromJson.newPassword, 'new-password');
      expect(fromJson.currentPassword, 'current-password');

      const requestWithoutCurrent = ChangePasswordRequest(newPassword: 'new-password');
      final jsonWithoutCurrent = requestWithoutCurrent.toJson();
      expect(jsonWithoutCurrent['currentPassword'], isNull);
      expect(ChangePasswordRequest.jsonSchema, isNotEmpty);
    });

    test('Permission toJson and fromJson', () {
      const permission = Permission(
        code: 'product:read',
        resource: 'product',
        action: 'read',
        description: 'Read products',
      );
      final json = permission.toJson();
      expect(json['code'], 'product:read');
      expect(json['resource'], 'product');
      expect(json['action'], 'read');
      expect(json['description'], 'Read products');
      final fromJson = Permission.fromJson(json);
      expect(fromJson.code, 'product:read');
      expect(fromJson.resource, 'product');
      expect(fromJson.action, 'read');
      expect(fromJson.description, 'Read products');
      expect(Permission.jsonSchema, isNotEmpty);
    });

    test('PermissionOverrideRequest toJson and fromJson', () {
      const request = PermissionOverrideRequest(granted: true);
      final json = request.toJson();
      expect(json['granted'], isTrue);
      final fromJson = PermissionOverrideRequest.fromJson(json);
      expect(fromJson.granted, isTrue);
      expect(PermissionOverrideRequest.jsonSchema, isNotEmpty);
    });

    test('Role toJson and fromJson', () {
      final role = Role(
        id: '1',
        code: 'admin',
        name: 'Administrator',
        description: 'Admin role',
        isSystem: true,
        permissions: const ['product:read', 'product:write'],
        createdAt: ApiInstant(value: DateTime.utc(2026, 10, 2)),
      );
      final json = role.toJson();
      expect(json['id'], '1');
      expect(json['code'], 'admin');
      expect(json['name'], 'Administrator');
      expect(json['description'], 'Admin role');
      expect(json['isSystem'], isTrue);
      expect(json['permissions'], ['product:read', 'product:write']);
      expect((json['createdAt'] as Map)['value'], '2026-10-02T00:00:00.000Z');

      final fromJson = Role.fromJson(json);
      expect(fromJson.id, '1');
      expect(fromJson.code, 'admin');
      expect(fromJson.name, 'Administrator');
      expect(fromJson.description, 'Admin role');
      expect(fromJson.isSystem, isTrue);
      expect(fromJson.permissions, ['product:read', 'product:write']);
      expect(fromJson.createdAt.value, DateTime.utc(2026, 10, 2));
      expect(Role.jsonSchema, isNotEmpty);
    });
  });
}
