import 'package:flutter_test/flutter_test.dart';
import 'package:folly_fields/util/date_time_extension.dart';

///
///
///
void main() {
  group(
    'DateTimeExtension firstWeekDay - Monday',
    () {
      Map<DateTime, DateTime> domain = <DateTime, DateTime>{
        DateTime(2023, 3, 19): DateTime(2023, 3, 13),
        DateTime(2023, 3, 20): DateTime(2023, 3, 20),
        DateTime(2023, 3, 21): DateTime(2023, 3, 20),
        DateTime(2023, 3, 22): DateTime(2023, 3, 20),
        DateTime(2023, 3, 23): DateTime(2023, 3, 20),
        DateTime(2023, 3, 24): DateTime(2023, 3, 20),
        DateTime(2023, 3, 25): DateTime(2023, 3, 20),
        DateTime(2023, 3, 26): DateTime(2023, 3, 20),
        DateTime(2023, 3, 27): DateTime(2023, 3, 27),
        DateTime(2023, 3, 28): DateTime(2023, 3, 27),
        DateTime(2023, 3, 29): DateTime(2023, 3, 27),
        DateTime(2023, 3, 30): DateTime(2023, 3, 27),
        DateTime(2023, 3, 31): DateTime(2023, 3, 27),
        DateTime(2023, 4): DateTime(2023, 3, 27),
        DateTime(2023, 4, 2): DateTime(2023, 3, 27),
        DateTime(2023, 4, 3): DateTime(2023, 4, 3),
        DateTime(2023, 4, 4): DateTime(2023, 4, 3),
        DateTime(2023, 4, 5): DateTime(2023, 4, 3),
        DateTime(2023, 4, 6): DateTime(2023, 4, 3),
        DateTime(2023, 4, 7): DateTime(2023, 4, 3),
        DateTime(2023, 4, 8): DateTime(2023, 4, 3),
      };

      for (final MapEntry<DateTime, DateTime> input in domain.entries) {
        test(
          'Testing ${input.key.toIso8601String()}',
          () => expect(input.key.weekFirstDay(DateTime.monday), input.value),
        );
      }
    },
  );

  group(
    'DateTimeExtension firstWeekDay - Wednesday',
    () {
      Map<DateTime, DateTime> domain = <DateTime, DateTime>{
        DateTime(2023, 3, 19): DateTime(2023, 3, 15),
        DateTime(2023, 3, 20): DateTime(2023, 3, 15),
        DateTime(2023, 3, 21): DateTime(2023, 3, 15),
        DateTime(2023, 3, 22): DateTime(2023, 3, 22),
        DateTime(2023, 3, 23): DateTime(2023, 3, 22),
        DateTime(2023, 3, 24): DateTime(2023, 3, 22),
        DateTime(2023, 3, 25): DateTime(2023, 3, 22),
        DateTime(2023, 3, 26): DateTime(2023, 3, 22),
        DateTime(2023, 3, 27): DateTime(2023, 3, 22),
        DateTime(2023, 3, 28): DateTime(2023, 3, 22),
        DateTime(2023, 3, 29): DateTime(2023, 3, 29),
        DateTime(2023, 3, 30): DateTime(2023, 3, 29),
        DateTime(2023, 3, 31): DateTime(2023, 3, 29),
        DateTime(2023, 4): DateTime(2023, 3, 29),
        DateTime(2023, 4, 2): DateTime(2023, 3, 29),
        DateTime(2023, 4, 3): DateTime(2023, 3, 29),
        DateTime(2023, 4, 4): DateTime(2023, 3, 29),
        DateTime(2023, 4, 5): DateTime(2023, 4, 5),
        DateTime(2023, 4, 6): DateTime(2023, 4, 5),
        DateTime(2023, 4, 7): DateTime(2023, 4, 5),
        DateTime(2023, 4, 8): DateTime(2023, 4, 5),
      };

      for (final MapEntry<DateTime, DateTime> input in domain.entries) {
        test(
          'Testing ${input.key.toIso8601String()}',
          () => expect(input.key.weekFirstDay(DateTime.wednesday), input.value),
        );
      }
    },
  );

  group(
    'DateTimeExtension firstWeekDay - Sunday',
    () {
      Map<DateTime, DateTime> domain = <DateTime, DateTime>{
        DateTime(2023, 3, 19): DateTime(2023, 3, 19),
        DateTime(2023, 3, 20): DateTime(2023, 3, 19),
        DateTime(2023, 3, 21): DateTime(2023, 3, 19),
        DateTime(2023, 3, 22): DateTime(2023, 3, 19),
        DateTime(2023, 3, 23): DateTime(2023, 3, 19),
        DateTime(2023, 3, 24): DateTime(2023, 3, 19),
        DateTime(2023, 3, 25): DateTime(2023, 3, 19),
        DateTime(2023, 3, 26): DateTime(2023, 3, 26),
        DateTime(2023, 3, 27): DateTime(2023, 3, 26),
        DateTime(2023, 3, 28): DateTime(2023, 3, 26),
        DateTime(2023, 3, 29): DateTime(2023, 3, 26),
        DateTime(2023, 3, 30): DateTime(2023, 3, 26),
        DateTime(2023, 3, 31): DateTime(2023, 3, 26),
        DateTime(2023, 4): DateTime(2023, 3, 26),
        DateTime(2023, 4, 2): DateTime(2023, 4, 2),
        DateTime(2023, 4, 3): DateTime(2023, 4, 2),
        DateTime(2023, 4, 4): DateTime(2023, 4, 2),
        DateTime(2023, 4, 5): DateTime(2023, 4, 2),
        DateTime(2023, 4, 6): DateTime(2023, 4, 2),
        DateTime(2023, 4, 7): DateTime(2023, 4, 2),
        DateTime(2023, 4, 8): DateTime(2023, 4, 2),
      };

      for (final MapEntry<DateTime, DateTime> input in domain.entries) {
        test(
          'Testing ${input.key.toIso8601String()}',
          () => expect(input.key.weekFirstDay(), input.value),
        );
      }
    },
  );
}
