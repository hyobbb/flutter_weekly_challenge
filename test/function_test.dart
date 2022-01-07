import 'package:flutter_test/flutter_test.dart';
import 'package:weekly_challenge/src/utils/functions.dart';


void main() {
  group('Week Generator', () {
    test('test if week is generated well', () {
      final weeks = generateWeeks(2022);
      expect(weeks.length, 52);
    });
  });
}
