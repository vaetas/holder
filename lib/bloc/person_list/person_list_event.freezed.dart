// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PersonListEventTearOff {
  const _$PersonListEventTearOff();

// ignore: unused_element
  _PersonListEventUpdate updated(List<Person> people) {
    return _PersonListEventUpdate(
      people,
    );
  }
}

// ignore: unused_element
const $PersonListEvent = _$PersonListEventTearOff();

mixin _$PersonListEvent {
  List<Person> get people;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(List<Person> people),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(List<Person> people),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_PersonListEventUpdate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_PersonListEventUpdate value),
    @required Result orElse(),
  });

  $PersonListEventCopyWith<PersonListEvent> get copyWith;
}

abstract class $PersonListEventCopyWith<$Res> {
  factory $PersonListEventCopyWith(
          PersonListEvent value, $Res Function(PersonListEvent) then) =
      _$PersonListEventCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

class _$PersonListEventCopyWithImpl<$Res>
    implements $PersonListEventCopyWith<$Res> {
  _$PersonListEventCopyWithImpl(this._value, this._then);

  final PersonListEvent _value;
  // ignore: unused_field
  final $Res Function(PersonListEvent) _then;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_value.copyWith(
      people: people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

abstract class _$PersonListEventUpdateCopyWith<$Res>
    implements $PersonListEventCopyWith<$Res> {
  factory _$PersonListEventUpdateCopyWith(_PersonListEventUpdate value,
          $Res Function(_PersonListEventUpdate) then) =
      __$PersonListEventUpdateCopyWithImpl<$Res>;
  @override
  $Res call({List<Person> people});
}

class __$PersonListEventUpdateCopyWithImpl<$Res>
    extends _$PersonListEventCopyWithImpl<$Res>
    implements _$PersonListEventUpdateCopyWith<$Res> {
  __$PersonListEventUpdateCopyWithImpl(_PersonListEventUpdate _value,
      $Res Function(_PersonListEventUpdate) _then)
      : super(_value, (v) => _then(v as _PersonListEventUpdate));

  @override
  _PersonListEventUpdate get _value => super._value as _PersonListEventUpdate;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_PersonListEventUpdate(
      people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

class _$_PersonListEventUpdate
    with DiagnosticableTreeMixin
    implements _PersonListEventUpdate {
  const _$_PersonListEventUpdate(this.people) : assert(people != null);

  @override
  final List<Person> people;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonListEvent.updated(people: $people)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonListEvent.updated'))
      ..add(DiagnosticsProperty('people', people));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonListEventUpdate &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(people);

  @override
  _$PersonListEventUpdateCopyWith<_PersonListEventUpdate> get copyWith =>
      __$PersonListEventUpdateCopyWithImpl<_PersonListEventUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result updated(List<Person> people),
  }) {
    assert(updated != null);
    return updated(people);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result updated(List<Person> people),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result updated(_PersonListEventUpdate value),
  }) {
    assert(updated != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result updated(_PersonListEventUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _PersonListEventUpdate implements PersonListEvent {
  const factory _PersonListEventUpdate(List<Person> people) =
      _$_PersonListEventUpdate;

  @override
  List<Person> get people;
  @override
  _$PersonListEventUpdateCopyWith<_PersonListEventUpdate> get copyWith;
}
