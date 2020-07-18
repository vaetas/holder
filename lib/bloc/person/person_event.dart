import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';

part 'person_event.freezed.dart';

@freezed
abstract class PersonEvent with _$PersonEvent {
  const factory PersonEvent.personLoaded({
    Person person,
  }) = _PersonEventPersonLoaded;

  const factory PersonEvent.notesLoaded({
    List<Note> notes,
  }) = _PersonEventNotesLoaded;
}
