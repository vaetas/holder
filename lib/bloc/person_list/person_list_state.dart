import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:holder/model/person.dart';

part 'person_list_state.freezed.dart';

@freezed
abstract class PersonListState with _$PersonListState {
  const factory PersonListState.initial() = _PersonListStateInitial;

  const factory PersonListState.success({
    List<Person> people,
  }) = _PersonListStateSuccess;
}
