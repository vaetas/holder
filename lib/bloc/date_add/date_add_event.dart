import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_add_event.freezed.dart';

@freezed
abstract class DateAddEvent with _$DateAddEvent {
  const factory DateAddEvent.saved({
    String name,
    DateTime dateTime,
  }) = _DateAddEventSaved;
}
