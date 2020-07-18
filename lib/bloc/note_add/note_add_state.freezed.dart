// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteAddStateTearOff {
  const _$NoteAddStateTearOff();

// ignore: unused_element
  _NoteAddStateInProgress inProgress() {
    return const _NoteAddStateInProgress();
  }

// ignore: unused_element
  _NoteAddStateSuccess success() {
    return const _NoteAddStateSuccess();
  }

// ignore: unused_element
  _NoteAddStateError error(String description) {
    return _NoteAddStateError(
      description,
    );
  }
}

// ignore: unused_element
const $NoteAddState = _$NoteAddStateTearOff();

mixin _$NoteAddState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(),
    @required Result error(String description),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(),
    Result error(String description),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result inProgress(_NoteAddStateInProgress value),
    @required Result success(_NoteAddStateSuccess value),
    @required Result error(_NoteAddStateError value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_NoteAddStateInProgress value),
    Result success(_NoteAddStateSuccess value),
    Result error(_NoteAddStateError value),
    @required Result orElse(),
  });
}

abstract class $NoteAddStateCopyWith<$Res> {
  factory $NoteAddStateCopyWith(
          NoteAddState value, $Res Function(NoteAddState) then) =
      _$NoteAddStateCopyWithImpl<$Res>;
}

class _$NoteAddStateCopyWithImpl<$Res> implements $NoteAddStateCopyWith<$Res> {
  _$NoteAddStateCopyWithImpl(this._value, this._then);

  final NoteAddState _value;
  // ignore: unused_field
  final $Res Function(NoteAddState) _then;
}

abstract class _$NoteAddStateInProgressCopyWith<$Res> {
  factory _$NoteAddStateInProgressCopyWith(_NoteAddStateInProgress value,
          $Res Function(_NoteAddStateInProgress) then) =
      __$NoteAddStateInProgressCopyWithImpl<$Res>;
}

class __$NoteAddStateInProgressCopyWithImpl<$Res>
    extends _$NoteAddStateCopyWithImpl<$Res>
    implements _$NoteAddStateInProgressCopyWith<$Res> {
  __$NoteAddStateInProgressCopyWithImpl(_NoteAddStateInProgress _value,
      $Res Function(_NoteAddStateInProgress) _then)
      : super(_value, (v) => _then(v as _NoteAddStateInProgress));

  @override
  _NoteAddStateInProgress get _value => super._value as _NoteAddStateInProgress;
}

class _$_NoteAddStateInProgress
    with DiagnosticableTreeMixin
    implements _NoteAddStateInProgress {
  const _$_NoteAddStateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteAddState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NoteAddState.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoteAddStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(),
    @required Result error(String description),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(),
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
    @required Result inProgress(_NoteAddStateInProgress value),
    @required Result success(_NoteAddStateSuccess value),
    @required Result error(_NoteAddStateError value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_NoteAddStateInProgress value),
    Result success(_NoteAddStateSuccess value),
    Result error(_NoteAddStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _NoteAddStateInProgress implements NoteAddState {
  const factory _NoteAddStateInProgress() = _$_NoteAddStateInProgress;
}

abstract class _$NoteAddStateSuccessCopyWith<$Res> {
  factory _$NoteAddStateSuccessCopyWith(_NoteAddStateSuccess value,
          $Res Function(_NoteAddStateSuccess) then) =
      __$NoteAddStateSuccessCopyWithImpl<$Res>;
}

class __$NoteAddStateSuccessCopyWithImpl<$Res>
    extends _$NoteAddStateCopyWithImpl<$Res>
    implements _$NoteAddStateSuccessCopyWith<$Res> {
  __$NoteAddStateSuccessCopyWithImpl(
      _NoteAddStateSuccess _value, $Res Function(_NoteAddStateSuccess) _then)
      : super(_value, (v) => _then(v as _NoteAddStateSuccess));

  @override
  _NoteAddStateSuccess get _value => super._value as _NoteAddStateSuccess;
}

class _$_NoteAddStateSuccess
    with DiagnosticableTreeMixin
    implements _NoteAddStateSuccess {
  const _$_NoteAddStateSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteAddState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NoteAddState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _NoteAddStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(),
    @required Result error(String description),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(),
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
    @required Result inProgress(_NoteAddStateInProgress value),
    @required Result success(_NoteAddStateSuccess value),
    @required Result error(_NoteAddStateError value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_NoteAddStateInProgress value),
    Result success(_NoteAddStateSuccess value),
    Result error(_NoteAddStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoteAddStateSuccess implements NoteAddState {
  const factory _NoteAddStateSuccess() = _$_NoteAddStateSuccess;
}

abstract class _$NoteAddStateErrorCopyWith<$Res> {
  factory _$NoteAddStateErrorCopyWith(
          _NoteAddStateError value, $Res Function(_NoteAddStateError) then) =
      __$NoteAddStateErrorCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$NoteAddStateErrorCopyWithImpl<$Res>
    extends _$NoteAddStateCopyWithImpl<$Res>
    implements _$NoteAddStateErrorCopyWith<$Res> {
  __$NoteAddStateErrorCopyWithImpl(
      _NoteAddStateError _value, $Res Function(_NoteAddStateError) _then)
      : super(_value, (v) => _then(v as _NoteAddStateError));

  @override
  _NoteAddStateError get _value => super._value as _NoteAddStateError;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_NoteAddStateError(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_NoteAddStateError
    with DiagnosticableTreeMixin
    implements _NoteAddStateError {
  const _$_NoteAddStateError(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteAddState.error(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteAddState.error'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteAddStateError &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$NoteAddStateErrorCopyWith<_NoteAddStateError> get copyWith =>
      __$NoteAddStateErrorCopyWithImpl<_NoteAddStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result inProgress(),
    @required Result success(),
    @required Result error(String description),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return error(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result inProgress(),
    Result success(),
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
    @required Result inProgress(_NoteAddStateInProgress value),
    @required Result success(_NoteAddStateSuccess value),
    @required Result error(_NoteAddStateError value),
  }) {
    assert(inProgress != null);
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result inProgress(_NoteAddStateInProgress value),
    Result success(_NoteAddStateSuccess value),
    Result error(_NoteAddStateError value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NoteAddStateError implements NoteAddState {
  const factory _NoteAddStateError(String description) = _$_NoteAddStateError;

  String get description;
  _$NoteAddStateErrorCopyWith<_NoteAddStateError> get copyWith;
}
