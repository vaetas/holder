import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'person_list_state.freezed.dart';

@freezed
abstract class PersonListState with _$PersonListState {
  const factory PersonListState.initial() = _PersonListStateInitial;

  const factory PersonListState.success({
    List<String> people,
  }) = _PersonListStateSuccess;
}
