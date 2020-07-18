import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_person_event.freezed.dart';

@freezed
abstract class CreatePersonEvent with _$CreatePersonEvent {
  const factory CreatePersonEvent.saved({
    String firstName,
    String lastName,
    String description,
  }) = _CreatePersonEventSaved;
}
