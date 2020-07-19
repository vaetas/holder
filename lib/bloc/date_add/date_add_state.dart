import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_add_state.freezed.dart';

@freezed
abstract class DateAddState with _$DateAddState {
  const factory DateAddState.success() = _DateAddStateSuccess;

  const factory DateAddState.error(
    String description,
  ) = _DateAddStateError;

  const factory DateAddState.inProgress() = _DateAddStateInProgress;
}
