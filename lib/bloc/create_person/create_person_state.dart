import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_person_state.freezed.dart';

@freezed
abstract class CreatePersonState with _$CreatePersonState {
  const factory CreatePersonState.success() = _CreatePersonStateSuccess;

  const factory CreatePersonState.inProgress() = _CreatePersonStateInProgress;

  const factory CreatePersonState.error(
    String description,
  ) = _CreatePersonStateError;
}
