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
  _PersonListEvent call() {
    return const _PersonListEvent();
  }
}

// ignore: unused_element
const $PersonListEvent = _$PersonListEventTearOff();

mixin _$PersonListEvent {}

abstract class $PersonListEventCopyWith<$Res> {
  factory $PersonListEventCopyWith(
          PersonListEvent value, $Res Function(PersonListEvent) then) =
      _$PersonListEventCopyWithImpl<$Res>;
}

class _$PersonListEventCopyWithImpl<$Res>
    implements $PersonListEventCopyWith<$Res> {
  _$PersonListEventCopyWithImpl(this._value, this._then);

  final PersonListEvent _value;
  // ignore: unused_field
  final $Res Function(PersonListEvent) _then;
}

abstract class _$PersonListEventCopyWith<$Res> {
  factory _$PersonListEventCopyWith(
          _PersonListEvent value, $Res Function(_PersonListEvent) then) =
      __$PersonListEventCopyWithImpl<$Res>;
}

class __$PersonListEventCopyWithImpl<$Res>
    extends _$PersonListEventCopyWithImpl<$Res>
    implements _$PersonListEventCopyWith<$Res> {
  __$PersonListEventCopyWithImpl(
      _PersonListEvent _value, $Res Function(_PersonListEvent) _then)
      : super(_value, (v) => _then(v as _PersonListEvent));

  @override
  _PersonListEvent get _value => super._value as _PersonListEvent;
}

class _$_PersonListEvent
    with DiagnosticableTreeMixin
    implements _PersonListEvent {
  const _$_PersonListEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PersonListEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'PersonListEvent'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PersonListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _PersonListEvent implements PersonListEvent {
  const factory _PersonListEvent() = _$_PersonListEvent;
}
