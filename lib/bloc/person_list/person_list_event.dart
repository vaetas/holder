import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holder/model/person.dart';

part 'person_list_event.freezed.dart';

@freezed
abstract class PersonListEvent with _$PersonListEvent {
  const factory PersonListEvent.updated(
    List<Person> people,
  ) = _PersonListEventUpdate;
}
