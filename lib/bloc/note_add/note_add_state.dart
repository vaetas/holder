import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_add_state.freezed.dart';

@freezed
abstract class NoteAddState with _$NoteAddState {
  const factory NoteAddState.inProgress() = _NoteAddStateInProgress;

  const factory NoteAddState.success() = _NoteAddStateSuccess;

  const factory NoteAddState.error(
    String description,
  ) = _NoteAddStateError;
}
