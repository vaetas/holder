import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holder/model/date.dart';
import 'package:holder/model/note.dart';
import 'package:holder/model/person.dart';

part 'person_state.freezed.dart';

@freezed
abstract class PersonState with _$PersonState {
  const factory PersonState.initial() = _PersonStateInitial;

  const factory PersonState.success({
    Person person,
    List<Note> notes,
    List<Date> dates,
  }) = _PersonStateSuccess;

  const factory PersonState.deleted() = _PersonStateDeleted;
}
