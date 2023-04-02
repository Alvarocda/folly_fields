import 'package:flutter_test/flutter_test.dart';
import 'package:folly_fields/validators/licence_plate_validator.dart';

///
///
///
void main() {
  group(
    'LicencePlateValidator isValid',
    () {
      Map<String, bool> domain = <String, bool>{
        '': false,
        ' ': false,
        '0': false,
        '1': false,
        '_': false,
        '!': false,
        '@': false,
        'a': false,
        'á': false,
        '00': false,
        'A': false,
        '9': false,
        'AA': false,
        'AAA': false,
        'AAA9': false,
        'AAAA': false,
        'AAA9A': false,
        'AAA9AA': false,
        'AAA9AA9': true,
        'AAA9999': true,
        'AA99A99': false,
        'AA99AA9': false,
        '9AA1234': false,
        'AAAA999': false,
        'AAA-9999': true,
        'AAA-9A99': true,
        'AAA-9AB9': true,
        'AAA-90Z9': true,
        '!AA-90Z9': false,
        'A!A-90Z9': false,
        '9AA-90Z9': false,
      };

      LicencePlateValidator validator = LicencePlateValidator();

      for (final MapEntry<String, bool> input in domain.entries) {
        test(
          'Testing: ${input.key}',
          () => expect(validator.isValid(input.key), input.value),
        );
      }
    },
  );

  group(
    'LicencePlateValidator format',
    () {
      Map<String, String> domain = <String, String>{
        '': '',
        ' ': '',
        '!': '',
        'AAA9999': 'AAA-9999',
        'AAA9A99': 'AAA-9A99',
        'AAA9AA9': 'AAA-9AA9',
        'AAA99A9': 'AAA-99A9',
      };

      LicencePlateValidator validator = LicencePlateValidator();

      for (final MapEntry<String, String> input in domain.entries) {
        test(
          'Testing ${input.key}',
          () => expect(validator.format(input.key), input.value),
        );
      }
    },
  );

  group('LicencePlateValidator Coverage', () {
    LicencePlateValidator validator = LicencePlateValidator();
    test('keyboard', () => expect(validator.keyboard, isNotNull));
  });
}
