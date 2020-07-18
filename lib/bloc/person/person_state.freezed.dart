// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PersonStateTearOff {
  const _$PersonStateTearOff();

// ignore: unused_element
  PersonStateInitial initial() {
    return const PersonStateInitial();
  }

// ignore: unused_element
  PersonStateSuccess success({Person person, List<Note> notes}) {
    return PersonStateSuccess(
      person: person,
      notes: notes,
    );
  }

// ignore: unused_element
  PersonStateInProgress inProgress() {
    return const PersonStateInProgress();
  }
}

// ignore: unused_element
const $PersonState = _$PersonStateTearOff();

mixin _$PersonState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes),
    @required Result inProgress(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes),
    Result inProgress(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PersonStateInitial value),
    @required Result success(PersonStateSuccess value),
    @required Result inProgress(PersonStateInProgress value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PersonStateInitial value),
    Result success(PersonStateSuccess value),
    Result inProgress(PersonStateInProgress value),
    @required Result orElse(),
  });
}

abstract class $PersonStateCopyWith<$Res> {
  factory $PersonStateCopyWith(
          PersonState value, $Res Function(PersonState) then) =
      _$PersonStateCopyWithImpl<$Res>;
}

class _$PersonStateCopyWithImpl<$Res> implements $PersonStateCopyWith<$Res> {
  _$PersonStateCopyWithImpl(this._value, this._then);

  final PersonState _value;
  // ignore: unused_field
  final $Res Function(PersonState) _then;
}

abstract class $PersonStateInitialCopyWith<$Res> {
  factory $PersonStateInitialCopyWith(
          PersonStateInitial value, $Res Function(PersonStateInitial) then) =
      _$PersonStateInitialCopyWithImpl<$Res>;
}

class _$PersonStateInitialCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements $PersonStateInitialCopyWith<$Res> {
  _$PersonStateInitialCopyWithImpl(
      PersonStateInitial _value, $Res Function(PersonStateInitial) _then)
      : super(_value, (v) => _then(v as PersonStateInitial));

  @override
  PersonStateInitial get _value => super._value as PersonStateInitial;
}

class _$PersonStateInitial
    with DiagnosticableTreeMixin
    implements PersonStateInitial {
  const _$PersonStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PersonStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes),
    @required Result inProgress(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes),
    Result inProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PersonStateInitial value),
    @required Result success(PersonStateSuccess value),
    @required Result inProgress(PersonStateInProgress value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PersonStateInitial value),
    Result success(PersonStateSuccess value),
    Result inProgress(PersonStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class PersonStateInitial implements PersonState {
  const factory PersonStateInitial() = _$PersonStateInitial;
}

abstract class $PersonStateSuccessCopyWith<$Res> {
  factory $PersonStateSuccessCopyWith(
          PersonStateSuccess value, $Res Function(PersonStateSuccess) then) =
      _$PersonStateSuccessCopyWithImpl<$Res>;
  $Res call({Person person, List<Note> notes});
}

class _$PersonStateSuccessCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements $PersonStateSuccessCopyWith<$Res> {
  _$PersonStateSuccessCopyWithImpl(
      PersonStateSuccess _value, $Res Function(PersonStateSuccess) _then)
      : super(_value, (v) => _then(v as PersonStateSuccess));

  @override
  PersonStateSuccess get _value => super._value as PersonStateSuccess;

  @override
  $Res call({
    Object person = freezed,
    Object notes = freezed,
  }) {
    return _then(PersonStateSuccess(
      person: person == freezed ? _value.person : person as Person,
      notes: notes == freezed ? _value.notes : notes as List<Note>,
    ));
  }
}

class _$PersonStateSuccess
    with DiagnosticableTreeMixin
    implements PersonStateSuccess {
  const _$PersonStateSuccess({this.person, this.notes});

  @override
  final Person person;
  @override
  final List<Note> notes;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonState.success(person: $person, notes: $notes)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonState.success'))
      ..add(DiagnosticsProperty('person', person))
      ..add(DiagnosticsProperty('notes', notes));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PersonStateSuccess &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(notes);

  @override
  $PersonStateSuccessCopyWith<PersonStateSuccess> get copyWith =>
      _$PersonStateSuccessCopyWithImpl<PersonStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes),
    @required Result inProgress(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return success(person, notes);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes),
    Result inProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(person, notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PersonStateInitial value),
    @required Result success(PersonStateSuccess value),
    @required Result inProgress(PersonStateInProgress value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PersonStateInitial value),
    Result success(PersonStateSuccess value),
    Result inProgress(PersonStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PersonStateSuccess implements PersonState {
  const factory PersonStateSuccess({Person person, List<Note> notes}) =
      _$PersonStateSuccess;

  Person get person;
  List<Note> get notes;
  $PersonStateSuccessCopyWith<PersonStateSuccess> get copyWith;
}

abstract class $PersonStateInProgressCopyWith<$Res> {
  factory $PersonStateInProgressCopyWith(PersonStateInProgress value,
          $Res Function(PersonStateInProgress) then) =
      _$PersonStateInProgressCopyWithImpl<$Res>;
}

class _$PersonStateInProgressCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements $PersonStateInProgressCopyWith<$Res> {
  _$PersonStateInProgressCopyWithImpl(
      PersonStateInProgress _value, $Res Function(PersonStateInProgress) _then)
      : super(_value, (v) => _then(v as PersonStateInProgress));

  @override
  PersonStateInProgress get _value => super._value as PersonStateInProgress;
}

class _$PersonStateInProgress
    with DiagnosticableTreeMixin
    implements PersonStateInProgress {
  const _$PersonStateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonState.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PersonStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes),
    @required Result inProgress(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes),
    Result inProgress(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(PersonStateInitial value),
    @required Result success(PersonStateSuccess value),
    @required Result inProgress(PersonStateInProgress value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(inProgress != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(PersonStateInitial value),
    Result success(PersonStateSuccess value),
    Result inProgress(PersonStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class PersonStateInProgress implements PersonState {
  const factory PersonStateInProgress() = _$PersonStateInProgress;
}
