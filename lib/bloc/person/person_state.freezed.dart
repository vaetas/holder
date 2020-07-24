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
  _PersonStateInitial initial() {
    return const _PersonStateInitial();
  }

// ignore: unused_element
  _PersonStateSuccess success(
      {Person person, List<Note> notes, List<Date> dates}) {
    return _PersonStateSuccess(
      person: person,
      notes: notes,
      dates: dates,
    );
  }

// ignore: unused_element
  _PersonStateDeleted deleted() {
    return const _PersonStateDeleted();
  }
}

// ignore: unused_element
const $PersonState = _$PersonStateTearOff();

mixin _$PersonState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PersonStateInitial value),
    @required Result success(_PersonStateSuccess value),
    @required Result deleted(_PersonStateDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonStateInitial value),
    Result success(_PersonStateSuccess value),
    Result deleted(_PersonStateDeleted value),
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

abstract class _$PersonStateInitialCopyWith<$Res> {
  factory _$PersonStateInitialCopyWith(
          _PersonStateInitial value, $Res Function(_PersonStateInitial) then) =
      __$PersonStateInitialCopyWithImpl<$Res>;
}

class __$PersonStateInitialCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements _$PersonStateInitialCopyWith<$Res> {
  __$PersonStateInitialCopyWithImpl(
      _PersonStateInitial _value, $Res Function(_PersonStateInitial) _then)
      : super(_value, (v) => _then(v as _PersonStateInitial));

  @override
  _PersonStateInitial get _value => super._value as _PersonStateInitial;
}

class _$_PersonStateInitial
    with DiagnosticableTreeMixin
    implements _PersonStateInitial {
  const _$_PersonStateInitial();

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
    return identical(this, other) || (other is _PersonStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
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
    @required Result initial(_PersonStateInitial value),
    @required Result success(_PersonStateSuccess value),
    @required Result deleted(_PersonStateDeleted value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonStateInitial value),
    Result success(_PersonStateSuccess value),
    Result deleted(_PersonStateDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PersonStateInitial implements PersonState {
  const factory _PersonStateInitial() = _$_PersonStateInitial;
}

abstract class _$PersonStateSuccessCopyWith<$Res> {
  factory _$PersonStateSuccessCopyWith(
          _PersonStateSuccess value, $Res Function(_PersonStateSuccess) then) =
      __$PersonStateSuccessCopyWithImpl<$Res>;
  $Res call({Person person, List<Note> notes, List<Date> dates});
}

class __$PersonStateSuccessCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements _$PersonStateSuccessCopyWith<$Res> {
  __$PersonStateSuccessCopyWithImpl(
      _PersonStateSuccess _value, $Res Function(_PersonStateSuccess) _then)
      : super(_value, (v) => _then(v as _PersonStateSuccess));

  @override
  _PersonStateSuccess get _value => super._value as _PersonStateSuccess;

  @override
  $Res call({
    Object person = freezed,
    Object notes = freezed,
    Object dates = freezed,
  }) {
    return _then(_PersonStateSuccess(
      person: person == freezed ? _value.person : person as Person,
      notes: notes == freezed ? _value.notes : notes as List<Note>,
      dates: dates == freezed ? _value.dates : dates as List<Date>,
    ));
  }
}

class _$_PersonStateSuccess
    with DiagnosticableTreeMixin
    implements _PersonStateSuccess {
  const _$_PersonStateSuccess({this.person, this.notes, this.dates});

  @override
  final Person person;
  @override
  final List<Note> notes;
  @override
  final List<Date> dates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonState.success(person: $person, notes: $notes, dates: $dates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonState.success'))
      ..add(DiagnosticsProperty('person', person))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('dates', dates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonStateSuccess &&
            (identical(other.person, person) ||
                const DeepCollectionEquality().equals(other.person, person)) &&
            (identical(other.notes, notes) ||
                const DeepCollectionEquality().equals(other.notes, notes)) &&
            (identical(other.dates, dates) ||
                const DeepCollectionEquality().equals(other.dates, dates)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(person) ^
      const DeepCollectionEquality().hash(notes) ^
      const DeepCollectionEquality().hash(dates);

  @override
  _$PersonStateSuccessCopyWith<_PersonStateSuccess> get copyWith =>
      __$PersonStateSuccessCopyWithImpl<_PersonStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return success(person, notes, dates);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(person, notes, dates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PersonStateInitial value),
    @required Result success(_PersonStateSuccess value),
    @required Result deleted(_PersonStateDeleted value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonStateInitial value),
    Result success(_PersonStateSuccess value),
    Result deleted(_PersonStateDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PersonStateSuccess implements PersonState {
  const factory _PersonStateSuccess(
      {Person person,
      List<Note> notes,
      List<Date> dates}) = _$_PersonStateSuccess;

  Person get person;
  List<Note> get notes;
  List<Date> get dates;
  _$PersonStateSuccessCopyWith<_PersonStateSuccess> get copyWith;
}

abstract class _$PersonStateDeletedCopyWith<$Res> {
  factory _$PersonStateDeletedCopyWith(
          _PersonStateDeleted value, $Res Function(_PersonStateDeleted) then) =
      __$PersonStateDeletedCopyWithImpl<$Res>;
}

class __$PersonStateDeletedCopyWithImpl<$Res>
    extends _$PersonStateCopyWithImpl<$Res>
    implements _$PersonStateDeletedCopyWith<$Res> {
  __$PersonStateDeletedCopyWithImpl(
      _PersonStateDeleted _value, $Res Function(_PersonStateDeleted) _then)
      : super(_value, (v) => _then(v as _PersonStateDeleted));

  @override
  _PersonStateDeleted get _value => super._value as _PersonStateDeleted;
}

class _$_PersonStateDeleted
    with DiagnosticableTreeMixin
    implements _PersonStateDeleted {
  const _$_PersonStateDeleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonState.deleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonState.deleted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PersonStateDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PersonStateInitial value),
    @required Result success(_PersonStateSuccess value),
    @required Result deleted(_PersonStateDeleted value),
  }) {
    assert(initial != null);
    assert(success != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonStateInitial value),
    Result success(_PersonStateSuccess value),
    Result deleted(_PersonStateDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _PersonStateDeleted implements PersonState {
  const factory _PersonStateDeleted() = _$_PersonStateDeleted;
}
