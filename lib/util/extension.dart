import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get formatted => DateFormat('y/MM/dd').format(this);
}
