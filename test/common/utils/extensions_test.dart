import 'package:flutter_test/flutter_test.dart';
import 'package:word_wardrobe/common/utils/extensions.dart';

void main() {
  group('Test DateTimeExtension.makeHoursRound() method', () {
    test('Time less than a half', () {
      final date = DateTime(2000, 3, 4, 6, 29, 59, 999, 999);

      expect(date.makeHoursRound(), equals(DateTime(2000, 3, 4, 6)));
    });

    test('Time more than a half', () {
      final date = DateTime(2000, 3, 4, 6, 31, 59, 999, 999);

      expect(date.makeHoursRound(), equals(DateTime(2000, 3, 4, 7)));
    });
  });
}
