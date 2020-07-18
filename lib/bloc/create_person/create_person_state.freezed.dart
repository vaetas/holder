// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'create_person_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreatePersonStateTearOff {
  const _$CreatePersonStateTearOff();

// ignore: unused_element
  _CreatePersonStateSuccess success() {
    return const _CreatePersonStateSuccess();
  }

// ignore: unused_element
  _CreatePersonStateInProgress inProgress() {
    return const _CreatePersonStateInProgress();
  }

// ignore: unused_element
  _CreatePersonStateError error(String description) {
    return _CreatePersonStateError(
      description,
    );
  }
}

// ignore: unused_element
const $CreatePersonState = _$CreatePersonStateTearOff();

mixin _$CreatePersonState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result inProgress(),
    @required Result error(String description),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result inProgress(),
    Result error(String description),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_CreatePersonStateSuccess value),
    @required Result inProgress(_CreatePersonStateInProgress value),
    @required Result error(_CreatePersonStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_CreatePersonStateSuccess value),
    Result inProgress(_CreatePersonStateInProgress value),
    Result error(_CreatePersonStateError value),
    @required Result orElse(),
  });
}

abstract class $CreatePersonStateCopyWith<$Res> {
  factory $CreatePersonStateCopyWith(
          CreatePersonState value, $Res Function(CreatePersonState) then) =
      _$CreatePersonStateCopyWithImpl<$Res>;
}

class _$CreatePersonStateCopyWithImpl<$Res>
    implements $CreatePersonStateCopyWith<$Res> {
  _$CreatePersonStateCopyWithImpl(this._value, this._then);

  final CreatePersonState _value;
  // ignore: unused_field
  final $Res Function(CreatePersonState) _then;
}

abstract class _$CreatePersonStateSuccessCopyWith<$Res> {
  factory _$CreatePersonStateSuccessCopyWith(_CreatePersonStateSuccess value,
          $Res Function(_CreatePersonStateSuccess) then) =
      __$CreatePersonStateSuccessCopyWithImpl<$Res>;
}

class __$CreatePersonStateSuccessCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res>
    implements _$CreatePersonStateSuccessCopyWith<$Res> {
  __$CreatePersonStateSuccessCopyWithImpl(_CreatePersonStateSuccess _value,
      $Res Function(_CreatePersonStateSuccess) _then)
      : super(_value, (v) => _then(v as _CreatePersonStateSuccess));

  @override
  _CreatePersonStateSuccess get _value =>
      super._value as _CreatePersonStateSuccess;
}

class _$_CreatePersonStateSuccess
    with DiagnosticableTreeMixin
    implements _CreatePersonStateSuccess {
  const _$_CreatePersonStateSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePersonState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CreatePersonState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreatePersonStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result inProgress(),
    @required Result error(String description),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result inProgress(),
    Result error(String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_CreatePersonStateSuccess value),
    @required Result inProgress(_CreatePersonStateInProgress value),
    @required Result error(_CreatePersonStateError value),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_CreatePersonStateSuccess value),
    Result inProgress(_CreatePersonStateInProgress value),
    Result error(_CreatePersonStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _CreatePersonStateSuccess implements CreatePersonState {
  const factory _CreatePersonStateSuccess() = _$_CreatePersonStateSuccess;
}

abstract class _$CreatePersonStateInProgressCopyWith<$Res> {
  factory _$CreatePersonStateInProgressCopyWith(
          _CreatePersonStateInProgress value,
          $Res Function(_CreatePersonStateInProgress) then) =
      __$CreatePersonStateInProgressCopyWithImpl<$Res>;
}

class __$CreatePersonStateInProgressCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res>
    implements _$CreatePersonStateInProgressCopyWith<$Res> {
  __$CreatePersonStateInProgressCopyWithImpl(
      _CreatePersonStateInProgress _value,
      $Res Function(_CreatePersonStateInProgress) _then)
      : super(_value, (v) => _then(v as _CreatePersonStateInProgress));

  @override
  _CreatePersonStateInProgress get _value =>
      super._value as _CreatePersonStateInProgress;
}

class _$_CreatePersonStateInProgress
    with DiagnosticableTreeMixin
    implements _CreatePersonStateInProgress {
  const _$_CreatePersonStateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePersonState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePersonState.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CreatePersonStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result inProgress(),
    @required Result error(String description),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result inProgress(),
    Result error(String description),
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
    @required Result success(_CreatePersonStateSuccess value),
    @required Result inProgress(_CreatePersonStateInProgress value),
    @required Result error(_CreatePersonStateError value),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_CreatePersonStateSuccess value),
    Result inProgress(_CreatePersonStateInProgress value),
    Result error(_CreatePersonStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _CreatePersonStateInProgress implements CreatePersonState {
  const factory _CreatePersonStateInProgress() = _$_CreatePersonStateInProgress;
}

abstract class _$CreatePersonStateErrorCopyWith<$Res> {
  factory _$CreatePersonStateErrorCopyWith(_CreatePersonStateError value,
          $Res Function(_CreatePersonStateError) then) =
      __$CreatePersonStateErrorCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$CreatePersonStateErrorCopyWithImpl<$Res>
    extends _$CreatePersonStateCopyWithImpl<$Res>
    implements _$CreatePersonStateErrorCopyWith<$Res> {
  __$CreatePersonStateErrorCopyWithImpl(_CreatePersonStateError _value,
      $Res Function(_CreatePersonStateError) _then)
      : super(_value, (v) => _then(v as _CreatePersonStateError));

  @override
  _CreatePersonStateError get _value => super._value as _CreatePersonStateError;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_CreatePersonStateError(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_CreatePersonStateError
    with DiagnosticableTreeMixin
    implements _CreatePersonStateError {
  const _$_CreatePersonStateError(this.description)
      : assert(description != null);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CreatePersonState.error(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CreatePersonState.error'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreatePersonStateError &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$CreatePersonStateErrorCopyWith<_CreatePersonStateError> get copyWith =>
      __$CreatePersonStateErrorCopyWithImpl<_CreatePersonStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result inProgress(),
    @required Result error(String description),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return error(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result inProgress(),
    Result error(String description),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_CreatePersonStateSuccess value),
    @required Result inProgress(_CreatePersonStateInProgress value),
    @required Result error(_CreatePersonStateError value),
  }) {
    assert(success != null);
    assert(inProgress != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_CreatePersonStateSuccess value),
    Result inProgress(_CreatePersonStateInProgress value),
    Result error(_CreatePersonStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CreatePersonStateError implements CreatePersonState {
  const factory _CreatePersonStateError(String description) =
      _$_CreatePersonStateError;

  String get description;
  _$CreatePersonStateErrorCopyWith<_CreatePersonStateError> get copyWith;
}
