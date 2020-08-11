import 'package:dartx/dartx.dart';
import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String get formatted => DateFormat('y/MM/dd').format(this);
}

extension IterableX<T> on Iterable<T> {
  /// Sort list by DateTime attribute from oldest (lower index) to newest
  /// (higher index).
  List<T> sortByDate(DateTime Function(T item) fn) {
    return sortedBy((e) => fn(e)).toList();
  }
}
