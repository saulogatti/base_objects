import 'package:base_objects/base_objects.dart';
import 'package:test/test.dart';

void main() {
  group('DeviceDisplay', () {
    test('joins brand and model', () {
      const device = Device(customerId: '0192', brand: 'Samsung', model: 'Galaxy S21');
      expect(device.displayName, 'Samsung Galaxy S21');
    });
  });
}
