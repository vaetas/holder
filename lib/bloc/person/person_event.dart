import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';

part 'person_event.freezed.dart';

@freezed
abstract class PersonEvent with _$PersonEvent {
  const factory PersonEvent.loaded({
    Person person,
    List<Note> notes,
    List<Date> dates,
  }) = _PersonEventLoaded;

  const factory PersonEvent.deleted() = _PersonEventDeleted;
}
