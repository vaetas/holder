import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_list_event.freezed.dart';

@freezed
abstract class PersonListEvent with _$PersonListEvent {
  const factory PersonListEvent() = _PersonListEvent;
}
