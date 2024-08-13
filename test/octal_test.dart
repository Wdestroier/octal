import 'package:octal/octal.dart';
import 'package:test/test.dart';

main() {
  group('Octal to Decimal Conversion', () {
    test('Valid octal number 755 should return 493', () {
      expect(octal(755), equals(493));
    });

    test('Valid octal number 0 should return 0', () {
      expect(octal(0), equals(0));
    });

    test('Valid octal number 7 should return 7', () {
      expect(octal(7), equals(7));
    });

    test('Valid octal number 10 should return 8', () {
      expect(octal(10), equals(8));
    });

    test('Valid octal number 177 should return 127', () {
      expect(octal(177), equals(127));
    });

    test('Invalid octal number 8 should throw ArgumentError', () {
      expect(() => octal(8), throwsArgumentError);
    });

    test('Invalid octal number 789 should throw ArgumentError', () {
      expect(() => octal(789), throwsArgumentError);
    });

    test('Valid octal number 256 should return 174', () {
      expect(octal(256), equals(174));
    });

    test('Valid large octal number 777777 should return correct decimal value',
        () {
      expect(octal(777777), equals(262143));
    });

    test(
        'Invalid octal number with leading invalid digit (89) should throw ArgumentError',
        () {
      expect(() => octal(89), throwsArgumentError);
    });

    test(
        'Invalid octal number with middle invalid digit (578) should throw ArgumentError',
        () {
      expect(() => octal(578), throwsArgumentError);
    });

    test(
        'Largest representable 64-bit signed integer as octal should be parsed correctly',
        () {
      final octalNumber = 7777777777777777777;
      final expectedDecimal = 144115188075855871; // 0x1FFFFFF_FFFFFFFF

      final result = octal(octalNumber);

      expect(result, equals(expectedDecimal),
          reason:
              'The largest representable 64-bit signed integer as an octal number should convert to its correct decimal value.');
    });
  });
}
