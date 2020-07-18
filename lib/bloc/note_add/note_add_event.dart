import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_add_event.freezed.dart';

@freezed
abstract class NoteAddEvent with _$NoteAddEvent {
  const factory NoteAddEvent.saved({
    String content,
  }) = _NoteAddEventSaved;
}
