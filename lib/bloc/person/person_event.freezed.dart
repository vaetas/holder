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
  _PersonEventLoaded loaded(
      {Person person, List<Note> notes, List<Date> dates}) {
    return _PersonEventLoaded(
      person: person,
      notes: notes,
      dates: dates,
    );
  }

// ignore: unused_element
  _PersonEventDeleted deleted() {
    return const _PersonEventDeleted();
  }
}

// ignore: unused_element
const $PersonEvent = _$PersonEventTearOff();

mixin _$PersonEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loaded(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loaded(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loaded(_PersonEventLoaded value),
    @required Result deleted(_PersonEventDeleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loaded(_PersonEventLoaded value),
    Result deleted(_PersonEventDeleted value),
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

abstract class _$PersonEventLoadedCopyWith<$Res> {
  factory _$PersonEventLoadedCopyWith(
          _PersonEventLoaded value, $Res Function(_PersonEventLoaded) then) =
      __$PersonEventLoadedCopyWithImpl<$Res>;
  $Res call({Person person, List<Note> notes, List<Date> dates});
}

class __$PersonEventLoadedCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res>
    implements _$PersonEventLoadedCopyWith<$Res> {
  __$PersonEventLoadedCopyWithImpl(
      _PersonEventLoaded _value, $Res Function(_PersonEventLoaded) _then)
      : super(_value, (v) => _then(v as _PersonEventLoaded));

  @override
  _PersonEventLoaded get _value => super._value as _PersonEventLoaded;

  @override
  $Res call({
    Object person = freezed,
    Object notes = freezed,
    Object dates = freezed,
  }) {
    return _then(_PersonEventLoaded(
      person: person == freezed ? _value.person : person as Person,
      notes: notes == freezed ? _value.notes : notes as List<Note>,
      dates: dates == freezed ? _value.dates : dates as List<Date>,
    ));
  }
}

class _$_PersonEventLoaded
    with DiagnosticableTreeMixin
    implements _PersonEventLoaded {
  const _$_PersonEventLoaded({this.person, this.notes, this.dates});

  @override
  final Person person;
  @override
  final List<Note> notes;
  @override
  final List<Date> dates;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonEvent.loaded(person: $person, notes: $notes, dates: $dates)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonEvent.loaded'))
      ..add(DiagnosticsProperty('person', person))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('dates', dates));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonEventLoaded &&
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
  _$PersonEventLoadedCopyWith<_PersonEventLoaded> get copyWith =>
      __$PersonEventLoadedCopyWithImpl<_PersonEventLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loaded(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  }) {
    assert(loaded != null);
    assert(deleted != null);
    return loaded(person, notes, dates);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loaded(Person person, List<Note> notes, List<Date> dates),
    Result deleted(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(person, notes, dates);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result loaded(_PersonEventLoaded value),
    @required Result deleted(_PersonEventDeleted value),
  }) {
    assert(loaded != null);
    assert(deleted != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loaded(_PersonEventLoaded value),
    Result deleted(_PersonEventDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _PersonEventLoaded implements PersonEvent {
  const factory _PersonEventLoaded(
      {Person person,
      List<Note> notes,
      List<Date> dates}) = _$_PersonEventLoaded;

  Person get person;
  List<Note> get notes;
  List<Date> get dates;
  _$PersonEventLoadedCopyWith<_PersonEventLoaded> get copyWith;
}

abstract class _$PersonEventDeletedCopyWith<$Res> {
  factory _$PersonEventDeletedCopyWith(
          _PersonEventDeleted value, $Res Function(_PersonEventDeleted) then) =
      __$PersonEventDeletedCopyWithImpl<$Res>;
}

class __$PersonEventDeletedCopyWithImpl<$Res>
    extends _$PersonEventCopyWithImpl<$Res>
    implements _$PersonEventDeletedCopyWith<$Res> {
  __$PersonEventDeletedCopyWithImpl(
      _PersonEventDeleted _value, $Res Function(_PersonEventDeleted) _then)
      : super(_value, (v) => _then(v as _PersonEventDeleted));

  @override
  _PersonEventDeleted get _value => super._value as _PersonEventDeleted;
}

class _$_PersonEventDeleted
    with DiagnosticableTreeMixin
    implements _PersonEventDeleted {
  const _$_PersonEventDeleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonEvent.deleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonEvent.deleted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PersonEventDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result loaded(Person person, List<Note> notes, List<Date> dates),
    @required Result deleted(),
  }) {
    assert(loaded != null);
    assert(deleted != null);
    return deleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result loaded(Person person, List<Note> notes, List<Date> dates),
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
    @required Result loaded(_PersonEventLoaded value),
    @required Result deleted(_PersonEventDeleted value),
  }) {
    assert(loaded != null);
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result loaded(_PersonEventLoaded value),
    Result deleted(_PersonEventDeleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _PersonEventDeleted implements PersonEvent {
  const factory _PersonEventDeleted() = _$_PersonEventDeleted;
}
