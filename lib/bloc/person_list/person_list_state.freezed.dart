// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'person_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PersonListStateTearOff {
  const _$PersonListStateTearOff();

// ignore: unused_element
  _PersonListStateInitial initial() {
    return const _PersonListStateInitial();
  }

// ignore: unused_element
  _PersonListStateSuccess success({List<Person> people}) {
    return _PersonListStateSuccess(
      people: people,
    );
  }
}

// ignore: unused_element
const $PersonListState = _$PersonListStateTearOff();

mixin _$PersonListState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Person> people),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Person> people),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PersonListStateInitial value),
    @required Result success(_PersonListStateSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonListStateInitial value),
    Result success(_PersonListStateSuccess value),
    @required Result orElse(),
  });
}

abstract class $PersonListStateCopyWith<$Res> {
  factory $PersonListStateCopyWith(
          PersonListState value, $Res Function(PersonListState) then) =
      _$PersonListStateCopyWithImpl<$Res>;
}

class _$PersonListStateCopyWithImpl<$Res>
    implements $PersonListStateCopyWith<$Res> {
  _$PersonListStateCopyWithImpl(this._value, this._then);

  final PersonListState _value;
  // ignore: unused_field
  final $Res Function(PersonListState) _then;
}

abstract class _$PersonListStateInitialCopyWith<$Res> {
  factory _$PersonListStateInitialCopyWith(_PersonListStateInitial value,
          $Res Function(_PersonListStateInitial) then) =
      __$PersonListStateInitialCopyWithImpl<$Res>;
}

class __$PersonListStateInitialCopyWithImpl<$Res>
    extends _$PersonListStateCopyWithImpl<$Res>
    implements _$PersonListStateInitialCopyWith<$Res> {
  __$PersonListStateInitialCopyWithImpl(_PersonListStateInitial _value,
      $Res Function(_PersonListStateInitial) _then)
      : super(_value, (v) => _then(v as _PersonListStateInitial));

  @override
  _PersonListStateInitial get _value => super._value as _PersonListStateInitial;
}

class _$_PersonListStateInitial
    with DiagnosticableTreeMixin
    implements _PersonListStateInitial {
  const _$_PersonListStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonListState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonListState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PersonListStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Person> people),
  }) {
    assert(initial != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Person> people),
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
    @required Result initial(_PersonListStateInitial value),
    @required Result success(_PersonListStateSuccess value),
  }) {
    assert(initial != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonListStateInitial value),
    Result success(_PersonListStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PersonListStateInitial implements PersonListState {
  const factory _PersonListStateInitial() = _$_PersonListStateInitial;
}

abstract class _$PersonListStateSuccessCopyWith<$Res> {
  factory _$PersonListStateSuccessCopyWith(_PersonListStateSuccess value,
          $Res Function(_PersonListStateSuccess) then) =
      __$PersonListStateSuccessCopyWithImpl<$Res>;
  $Res call({List<Person> people});
}

class __$PersonListStateSuccessCopyWithImpl<$Res>
    extends _$PersonListStateCopyWithImpl<$Res>
    implements _$PersonListStateSuccessCopyWith<$Res> {
  __$PersonListStateSuccessCopyWithImpl(_PersonListStateSuccess _value,
      $Res Function(_PersonListStateSuccess) _then)
      : super(_value, (v) => _then(v as _PersonListStateSuccess));

  @override
  _PersonListStateSuccess get _value => super._value as _PersonListStateSuccess;

  @override
  $Res call({
    Object people = freezed,
  }) {
    return _then(_PersonListStateSuccess(
      people: people == freezed ? _value.people : people as List<Person>,
    ));
  }
}

class _$_PersonListStateSuccess
    with DiagnosticableTreeMixin
    implements _PersonListStateSuccess {
  const _$_PersonListStateSuccess({this.people});

  @override
  final List<Person> people;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonListState.success(people: $people)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PersonListState.success'))
      ..add(DiagnosticsProperty('people', people));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonListStateSuccess &&
            (identical(other.people, people) ||
                const DeepCollectionEquality().equals(other.people, people)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(people);

  @override
  _$PersonListStateSuccessCopyWith<_PersonListStateSuccess> get copyWith =>
      __$PersonListStateSuccessCopyWithImpl<_PersonListStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result success(List<Person> people),
  }) {
    assert(initial != null);
    assert(success != null);
    return success(people);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result success(List<Person> people),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(people);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_PersonListStateInitial value),
    @required Result success(_PersonListStateSuccess value),
  }) {
    assert(initial != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_PersonListStateInitial value),
    Result success(_PersonListStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PersonListStateSuccess implements PersonListState {
  const factory _PersonListStateSuccess({List<Person> people}) =
      _$_PersonListStateSuccess;

  List<Person> get people;
  _$PersonListStateSuccessCopyWith<_PersonListStateSuccess> get copyWith;
}
