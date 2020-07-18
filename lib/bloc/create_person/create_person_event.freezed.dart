// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_person_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreatePersonEventTearOff {
  const _$CreatePersonEventTearOff();

// ignore: unused_element
  _CreatePersonEventSaved saved(
      {String firstName, String lastName, String description}) {
    return _CreatePersonEventSaved(
      firstName: firstName,
      lastName: lastName,
      description: description,
    );
  }
}

// ignore: unused_element
const $CreatePersonEvent = _$CreatePersonEventTearOff();

mixin _$CreatePersonEvent {
  String get firstName;
  String get lastName;
  String get description;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result saved(String firstName, String lastName, String description),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String firstName, String lastName, String description),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_CreatePersonEventSaved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_CreatePersonEventSaved value),
    @required Result orElse(),
  });

  $CreatePersonEventCopyWith<CreatePersonEvent> get copyWith;
}

abstract class $CreatePersonEventCopyWith<$Res> {
  factory $CreatePersonEventCopyWith(
          CreatePersonEvent value, $Res Function(CreatePersonEvent) then) =
      _$CreatePersonEventCopyWithImpl<$Res>;
  $Res call({String firstName, String lastName, String description});
}

class _$CreatePersonEventCopyWithImpl<$Res>
    implements $CreatePersonEventCopyWith<$Res> {
  _$CreatePersonEventCopyWithImpl(this._value, this._then);

  final CreatePersonEvent _value;
  // ignore: unused_field
  final $Res Function(CreatePersonEvent) _then;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object description = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

abstract class _$CreatePersonEventSavedCopyWith<$Res>
    implements $CreatePersonEventCopyWith<$Res> {
  factory _$CreatePersonEventSavedCopyWith(_CreatePersonEventSaved value,
          $Res Function(_CreatePersonEventSaved) then) =
      __$CreatePersonEventSavedCopyWithImpl<$Res>;
  @override
  $Res call({String firstName, String lastName, String description});
}

class __$CreatePersonEventSavedCopyWithImpl<$Res>
    extends _$CreatePersonEventCopyWithImpl<$Res>
    implements _$CreatePersonEventSavedCopyWith<$Res> {
  __$CreatePersonEventSavedCopyWithImpl(_CreatePersonEventSaved _value,
      $Res Function(_CreatePersonEventSaved) _then)
      : super(_value, (v) => _then(v as _CreatePersonEventSaved));

  @override
  _CreatePersonEventSaved get _value => super._value as _CreatePersonEventSaved;

  @override
  $Res call({
    Object firstName = freezed,
    Object lastName = freezed,
    Object description = freezed,
  }) {
    return _then(_CreatePersonEventSaved(
      firstName: firstName == freezed ? _value.firstName : firstName as String,
      lastName: lastName == freezed ? _value.lastName : lastName as String,
      description:
          description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_CreatePersonEventSaved
    with DiagnosticableTreeMixin
    implements _CreatePersonEventSaved {
  const _$_CreatePersonEventSaved(
      {this.firstName, this.lastName, this.description});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePersonEvent.saved(firstName: $firstName, lastName: $lastName, description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePersonEvent.saved'))
      ..add(DiagnosticsProperty('firstName', firstName))
      ..add(DiagnosticsProperty('lastName', lastName))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePersonEventSaved &&
            (identical(other.firstName, firstName) ||
                const DeepCollectionEquality()
                    .equals(other.firstName, firstName)) &&
            (identical(other.lastName, lastName) ||
                const DeepCollectionEquality()
                    .equals(other.lastName, lastName)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstName) ^
      const DeepCollectionEquality().hash(lastName) ^
      const DeepCollectionEquality().hash(description);

  @override
  _$CreatePersonEventSavedCopyWith<_CreatePersonEventSaved> get copyWith =>
      __$CreatePersonEventSavedCopyWithImpl<_CreatePersonEventSaved>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result saved(String firstName, String lastName, String description),
  }) {
    assert(saved != null);
    return saved(firstName, lastName, description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String firstName, String lastName, String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(firstName, lastName, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_CreatePersonEventSaved value),
  }) {
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_CreatePersonEventSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _CreatePersonEventSaved implements CreatePersonEvent {
  const factory _CreatePersonEventSaved(
      {String firstName,
      String lastName,
      String description}) = _$_CreatePersonEventSaved;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get description;
  @override
  _$CreatePersonEventSavedCopyWith<_CreatePersonEventSaved> get copyWith;
}
