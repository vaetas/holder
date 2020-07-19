// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_add_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DateAddEventTearOff {
  const _$DateAddEventTearOff();

// ignore: unused_element
  _DateAddEventSaved saved({String name, DateTime dateTime}) {
    return _DateAddEventSaved(
      name: name,
      dateTime: dateTime,
    );
  }
}

// ignore: unused_element
const $DateAddEvent = _$DateAddEventTearOff();

mixin _$DateAddEvent {
  String get name;
  DateTime get dateTime;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(String name, DateTime dateTime),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String name, DateTime dateTime),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_DateAddEventSaved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_DateAddEventSaved value),
    @required Result orElse(),
  });

  $DateAddEventCopyWith<DateAddEvent> get copyWith;
}

abstract class $DateAddEventCopyWith<$Res> {
  factory $DateAddEventCopyWith(
          DateAddEvent value, $Res Function(DateAddEvent) then) =
      _$DateAddEventCopyWithImpl<$Res>;
  $Res call({String name, DateTime dateTime});
}

class _$DateAddEventCopyWithImpl<$Res> implements $DateAddEventCopyWith<$Res> {
  _$DateAddEventCopyWithImpl(this._value, this._then);

  final DateAddEvent _value;
  // ignore: unused_field
  final $Res Function(DateAddEvent) _then;

  @override
  $Res call({
    Object name = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

abstract class _$DateAddEventSavedCopyWith<$Res>
    implements $DateAddEventCopyWith<$Res> {
  factory _$DateAddEventSavedCopyWith(
          _DateAddEventSaved value, $Res Function(_DateAddEventSaved) then) =
      __$DateAddEventSavedCopyWithImpl<$Res>;
  @override
  $Res call({String name, DateTime dateTime});
}

class __$DateAddEventSavedCopyWithImpl<$Res>
    extends _$DateAddEventCopyWithImpl<$Res>
    implements _$DateAddEventSavedCopyWith<$Res> {
  __$DateAddEventSavedCopyWithImpl(
      _DateAddEventSaved _value, $Res Function(_DateAddEventSaved) _then)
      : super(_value, (v) => _then(v as _DateAddEventSaved));

  @override
  _DateAddEventSaved get _value => super._value as _DateAddEventSaved;

  @override
  $Res call({
    Object name = freezed,
    Object dateTime = freezed,
  }) {
    return _then(_DateAddEventSaved(
      name: name == freezed ? _value.name : name as String,
      dateTime: dateTime == freezed ? _value.dateTime : dateTime as DateTime,
    ));
  }
}

class _$_DateAddEventSaved
    with DiagnosticableTreeMixin
    implements _DateAddEventSaved {
  const _$_DateAddEventSaved({this.name, this.dateTime});

  @override
  final String name;
  @override
  final DateTime dateTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateAddEvent.saved(name: $name, dateTime: $dateTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DateAddEvent.saved'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('dateTime', dateTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateAddEventSaved &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(dateTime);

  @override
  _$DateAddEventSavedCopyWith<_DateAddEventSaved> get copyWith =>
      __$DateAddEventSavedCopyWithImpl<_DateAddEventSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(String name, DateTime dateTime),
  }) {
    assert(saved != null);
    return saved(name, dateTime);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String name, DateTime dateTime),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(name, dateTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_DateAddEventSaved value),
  }) {
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_DateAddEventSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _DateAddEventSaved implements DateAddEvent {
  const factory _DateAddEventSaved({String name, DateTime dateTime}) =
      _$_DateAddEventSaved;

  @override
  String get name;
  @override
  DateTime get dateTime;
  @override
  _$DateAddEventSavedCopyWith<_DateAddEventSaved> get copyWith;
}
