import 'package:base_objects/base_apis.dart';
import 'package:test/test.dart';

void main() {
  group('ServiceOrderStatusStage', () {
    test('isClosed only for final statuses', () {
      const closed = {
        ServiceOrderStatus.delivered,
        ServiceOrderStatus.cancelled,
        ServiceOrderStatus.returnedUnrepaired,
      };
      for (final status in ServiceOrderStatus.values) {
        expect(status.isClosed, closed.contains(status), reason: status.name);
      }
    });

    test('isApproved from approval until delivery', () {
      const approved = {
        ServiceOrderStatus.approved,
        ServiceOrderStatus.awaitingParts,
        ServiceOrderStatus.inRepair,
        ServiceOrderStatus.ready,
        ServiceOrderStatus.delivered,
      };
      for (final status in ServiceOrderStatus.values) {
        expect(status.isApproved, approved.contains(status), reason: status.name);
      }
    });
  });
}
