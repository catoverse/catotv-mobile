import 'package:flutter_test/flutter_test.dart';
import 'package:intl/intl.dart';

void main() {
  test('y-MM-d h:m:s date format test', () {
    print(DateFormat("y-MM-d h:m:s").format(DateTime.now()).toString());
  });
}
