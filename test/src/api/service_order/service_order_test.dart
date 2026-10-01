import 'package:base_objects/base_apis.dart';
import 'package:test/test.dart';

void main() {
  DeviceEntryCondition condition({
    bool screenCracked = false,
    bool housingDamaged = false,
    bool waterDamage = false,
    bool batterySwollen = false,
    bool touchWorking = true,
  }) => DeviceEntryCondition(
    screenCracked: screenCracked,
    touchWorking: touchWorking,
    housingDamaged: housingDamaged,
    waterDamage: waterDamage,
    batterySwollen: batterySwollen,
    buttonsWorking: true,
    cameraWorking: true,
    chargingWorking: true,
  );

  ServiceOrderItem item({String? productId, String? serviceId}) => ServiceOrderItem(
    id: '0192',
    serviceOrderId: '0193',
    description: 'Troca de tela',
    quantity: QuantityAmount.parse('1'),
    unitPrice: MoneyAmount.parse('100'),
    totalValue: MoneyAmount.parse('100'),
    createdAt: ApiInstant(value: DateTime.utc(2026, 9, 30)),
    productId: productId,
    serviceId: serviceId,
  );

  group('DeviceEntryConditionDamage', () {
    test('no damage when everything is intact', () {
      expect(condition().hasRecordedDamage, isFalse);
    });

    test('functional failures alone are not damage', () {
      expect(condition(touchWorking: false).hasRecordedDamage, isFalse);
    });

    test('any physical damage counts', () {
      expect(condition(screenCracked: true).hasRecordedDamage, isTrue);
      expect(condition(housingDamaged: true).hasRecordedDamage, isTrue);
      expect(condition(waterDamage: true).hasRecordedDamage, isTrue);
      expect(condition(batterySwollen: true).hasRecordedDamage, isTrue);
    });
  });

  group('ServiceOrderItemKind', () {
    test('product is a part', () {
      final part = item(productId: 'p1');
      expect(part.isPart, isTrue);
      expect(part.isService, isFalse);
    });

    test('service is labor', () {
      final labor = item(serviceId: 's1');
      expect(labor.isPart, isFalse);
      expect(labor.isService, isTrue);
    });
  });
}
