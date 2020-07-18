// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PersonEventTearOff {
  const _$PersonEventTearOff();

// ignore: unused_element
  _PersonEventPersonLoaded personLoaded({Person person}) {
    return _PersonEventPersonLoaded(
      person: person,
    );
  }

// ignore: unused_element
  _PersonEventNotesLoaded notesLoaded({List<Note> notes}) {
    return _PersonEventNotesLoaded(
      notes: notes,
    );
  }
}

// ignore: unused_element
const $PersonEvent = _$PersonEventTearOff();

mixin _$PersonEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personLoaded(Person person),
    @required Result notesLoaded(List<Note> notes),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personLoaded(Person person),
    Result notesLoaded(List<Note> notes),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personLoaded(_PersonEventPersonLoaded value),
    @required Result notesLoaded(_PersonEventNotesLoaded value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personLoaded(_PersonEventPersonLoaded value),
    Result notesLoaded(_PersonEventNotesLoaded value),
    @required Result orElse(),
  });
}

abstract class $PersonEventCopyWith<$Res> {
  factory $PersonEventCopyWith(
          PersonEvent value, $Res Function(PersonEvent) then) =
      _$PersonEventCopyWithImpl<$Res>;
}

class _$PersonEventCopyWithImpl<$Res> implements $PersonEventCopyWith<$Res> {
  _$PersonEventCopyWithImpl(this._value, this._then);

  final PersonEvent _value;
  // ignore: unused_field
  final $Res Function(PersonEvent) _then;
}

abstract class _$PersonEventPersonLoadedCopyWith<$Res> {
  factory _$PersonEventPersonLoadedCopyWith(_PersonEventPersonLoaded value,
          $Res Function(_PersonEventPersonLoaded) then) =
      __$PersonEventPersonLoadedCopyWithImpl<$Res>;
  $Res call({Person person});
}

class __$PersonEventPersonLoadedCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res>
    implements _$PersonEventPersonLoadedCopyWith<$Res> {
  __$PersonEventPersonLoadedCopyWithImpl(_PersonEventPersonLoaded _value,
      $Res Function(_PersonEventPersonLoaded) _then)
      : super(_value, (v) => _then(v as _PersonEventPersonLoaded));

  @override
  _PersonEventPersonLoaded get _value =>
      super._value as _PersonEventPersonLoaded;

  @override
  $Res call({
    Object person = freezed,
  }) {
    return _then(_PersonEventPersonLoaded(
      person: person == freezed ? _value.person : person as Person,
    ));
  }
}

class _$_PersonEventPersonLoaded
    with DiagnosticableTreeMixin
    implements _PersonEventPersonLoaded {
  const _$_PersonEventPersonLoaded({this.person});

  @override
  final Person person;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonEvent.personLoaded(person: $person)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonEvent.personLoaded'))
      ..add(DiagnosticsProperty('person', person));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonEventPersonLoaded &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(person);

  @override
  _$PersonEventPersonLoadedCopyWith<_PersonEventPersonLoaded> get copyWith =>
      __$PersonEventPersonLoadedCopyWithImpl<_PersonEventPersonLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personLoaded(Person person),
    @required Result notesLoaded(List<Note> notes),
  }) {
    assert(personLoaded != null);
    assert(notesLoaded != null);
    return personLoaded(person);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personLoaded(Person person),
    Result notesLoaded(List<Note> notes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personLoaded != null) {
      return personLoaded(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personLoaded(_PersonEventPersonLoaded value),
    @required Result notesLoaded(_PersonEventNotesLoaded value),
  }) {
    assert(personLoaded != null);
    assert(notesLoaded != null);
    return personLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personLoaded(_PersonEventPersonLoaded value),
    Result notesLoaded(_PersonEventNotesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (personLoaded != null) {
      return personLoaded(this);
    }
    return orElse();
  }
}

abstract class _PersonEventPersonLoaded implements PersonEvent {
  const factory _PersonEventPersonLoaded({Person person}) =
      _$_PersonEventPersonLoaded;

  Person get person;
  _$PersonEventPersonLoadedCopyWith<_PersonEventPersonLoaded> get copyWith;
}

abstract class _$PersonEventNotesLoadedCopyWith<$Res> {
  factory _$PersonEventNotesLoadedCopyWith(_PersonEventNotesLoaded value,
          $Res Function(_PersonEventNotesLoaded) then) =
      __$PersonEventNotesLoadedCopyWithImpl<$Res>;
  $Res call({List<Note> notes});
}

class __$PersonEventNotesLoadedCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res>
    implements _$PersonEventNotesLoadedCopyWith<$Res> {
  __$PersonEventNotesLoadedCopyWithImpl(_PersonEventNotesLoaded _value,
      $Res Function(_PersonEventNotesLoaded) _then)
      : super(_value, (v) => _then(v as _PersonEventNotesLoaded));

  @override
  _PersonEventNotesLoaded get _value => super._value as _PersonEventNotesLoaded;

  @override
  $Res call({
    Object notes = freezed,
  }) {
    return _then(_PersonEventNotesLoaded(
      notes: notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

class _$_PersonEventNotesLoaded
    with DiagnosticableTreeMixin
    implements _PersonEventNotesLoaded {
  const _$_PersonEventNotesLoaded({this.notes});

  @override
  final List<Note> notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonEvent.notesLoaded(notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonEvent.notesLoaded'))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonEventNotesLoaded &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(notes);

  @override
  _$PersonEventNotesLoadedCopyWith<_PersonEventNotesLoaded> get copyWith =>
      __$PersonEventNotesLoadedCopyWithImpl<_PersonEventNotesLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result personLoaded(Person person),
    @required Result notesLoaded(List<Note> notes),
  }) {
    assert(personLoaded != null);
    assert(notesLoaded != null);
    return notesLoaded(notes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result personLoaded(Person person),
    Result notesLoaded(List<Note> notes),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesLoaded != null) {
      return notesLoaded(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result personLoaded(_PersonEventPersonLoaded value),
    @required Result notesLoaded(_PersonEventNotesLoaded value),
  }) {
    assert(personLoaded != null);
    assert(notesLoaded != null);
    return notesLoaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result personLoaded(_PersonEventPersonLoaded value),
    Result notesLoaded(_PersonEventNotesLoaded value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (notesLoaded != null) {
      return notesLoaded(this);
    }
    return orElse();
  }
}

abstract class _PersonEventNotesLoaded implements PersonEvent {
  const factory _PersonEventNotesLoaded({List<Note> notes}) =
      _$_PersonEventNotesLoaded;

  List<Note> get notes;
  _$PersonEventNotesLoadedCopyWith<_PersonEventNotesLoaded> get copyWith;
}
