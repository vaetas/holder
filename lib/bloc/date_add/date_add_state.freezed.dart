// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'date_add_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DateAddStateTearOff {
  const _$DateAddStateTearOff();

// ignore: unused_element
  _DateAddStateSuccess success() {
    return const _DateAddStateSuccess();
  }

// ignore: unused_element
  _DateAddStateError error(String description) {
    return _DateAddStateError(
      description,
    );
  }

// ignore: unused_element
  _DateAddStateInProgress inProgress() {
    return const _DateAddStateInProgress();
  }
}

// ignore: unused_element
const $DateAddState = _$DateAddStateTearOff();

mixin _$DateAddState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result error(String description),
    @required Result inProgress(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result error(String description),
    Result inProgress(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(_DateAddStateSuccess value),
    @required Result error(_DateAddStateError value),
    @required Result inProgress(_DateAddStateInProgress value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_DateAddStateSuccess value),
    Result error(_DateAddStateError value),
    Result inProgress(_DateAddStateInProgress value),
    @required Result orElse(),
  });
}

abstract class $DateAddStateCopyWith<$Res> {
  factory $DateAddStateCopyWith(
          DateAddState value, $Res Function(DateAddState) then) =
      _$DateAddStateCopyWithImpl<$Res>;
}

class _$DateAddStateCopyWithImpl<$Res> implements $DateAddStateCopyWith<$Res> {
  _$DateAddStateCopyWithImpl(this._value, this._then);

  final DateAddState _value;
  // ignore: unused_field
  final $Res Function(DateAddState) _then;
}

abstract class _$DateAddStateSuccessCopyWith<$Res> {
  factory _$DateAddStateSuccessCopyWith(_DateAddStateSuccess value,
          $Res Function(_DateAddStateSuccess) then) =
      __$DateAddStateSuccessCopyWithImpl<$Res>;
}

class __$DateAddStateSuccessCopyWithImpl<$Res>
    extends _$DateAddStateCopyWithImpl<$Res>
    implements _$DateAddStateSuccessCopyWith<$Res> {
  __$DateAddStateSuccessCopyWithImpl(
      _DateAddStateSuccess _value, $Res Function(_DateAddStateSuccess) _then)
      : super(_value, (v) => _then(v as _DateAddStateSuccess));

  @override
  _DateAddStateSuccess get _value => super._value as _DateAddStateSuccess;
}

class _$_DateAddStateSuccess
    with DiagnosticableTreeMixin
    implements _DateAddStateSuccess {
  const _$_DateAddStateSuccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateAddState.success()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DateAddState.success'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DateAddStateSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result error(String description),
    @required Result inProgress(),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return success();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result error(String description),
    Result inProgress(),
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
    @required Result success(_DateAddStateSuccess value),
    @required Result error(_DateAddStateError value),
    @required Result inProgress(_DateAddStateInProgress value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_DateAddStateSuccess value),
    Result error(_DateAddStateError value),
    Result inProgress(_DateAddStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _DateAddStateSuccess implements DateAddState {
  const factory _DateAddStateSuccess() = _$_DateAddStateSuccess;
}

abstract class _$DateAddStateErrorCopyWith<$Res> {
  factory _$DateAddStateErrorCopyWith(
          _DateAddStateError value, $Res Function(_DateAddStateError) then) =
      __$DateAddStateErrorCopyWithImpl<$Res>;
  $Res call({String description});
}

class __$DateAddStateErrorCopyWithImpl<$Res>
    extends _$DateAddStateCopyWithImpl<$Res>
    implements _$DateAddStateErrorCopyWith<$Res> {
  __$DateAddStateErrorCopyWithImpl(
      _DateAddStateError _value, $Res Function(_DateAddStateError) _then)
      : super(_value, (v) => _then(v as _DateAddStateError));

  @override
  _DateAddStateError get _value => super._value as _DateAddStateError;

  @override
  $Res call({
    Object description = freezed,
  }) {
    return _then(_DateAddStateError(
      description == freezed ? _value.description : description as String,
    ));
  }
}

class _$_DateAddStateError
    with DiagnosticableTreeMixin
    implements _DateAddStateError {
  const _$_DateAddStateError(this.description) : assert(description != null);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateAddState.error(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DateAddState.error'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateAddStateError &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(description);

  @override
  _$DateAddStateErrorCopyWith<_DateAddStateError> get copyWith =>
      __$DateAddStateErrorCopyWithImpl<_DateAddStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result error(String description),
    @required Result inProgress(),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return error(description);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result error(String description),
    Result inProgress(),
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
    @required Result success(_DateAddStateSuccess value),
    @required Result error(_DateAddStateError value),
    @required Result inProgress(_DateAddStateInProgress value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_DateAddStateSuccess value),
    Result error(_DateAddStateError value),
    Result inProgress(_DateAddStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DateAddStateError implements DateAddState {
  const factory _DateAddStateError(String description) = _$_DateAddStateError;

  String get description;
  _$DateAddStateErrorCopyWith<_DateAddStateError> get copyWith;
}

abstract class _$DateAddStateInProgressCopyWith<$Res> {
  factory _$DateAddStateInProgressCopyWith(_DateAddStateInProgress value,
          $Res Function(_DateAddStateInProgress) then) =
      __$DateAddStateInProgressCopyWithImpl<$Res>;
}

class __$DateAddStateInProgressCopyWithImpl<$Res>
    extends _$DateAddStateCopyWithImpl<$Res>
    implements _$DateAddStateInProgressCopyWith<$Res> {
  __$DateAddStateInProgressCopyWithImpl(_DateAddStateInProgress _value,
      $Res Function(_DateAddStateInProgress) _then)
      : super(_value, (v) => _then(v as _DateAddStateInProgress));

  @override
  _DateAddStateInProgress get _value => super._value as _DateAddStateInProgress;
}

class _$_DateAddStateInProgress
    with DiagnosticableTreeMixin
    implements _DateAddStateInProgress {
  const _$_DateAddStateInProgress();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateAddState.inProgress()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'DateAddState.inProgress'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DateAddStateInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(),
    @required Result error(String description),
    @required Result inProgress(),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return inProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(),
    Result error(String description),
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
    @required Result success(_DateAddStateSuccess value),
    @required Result error(_DateAddStateError value),
    @required Result inProgress(_DateAddStateInProgress value),
  }) {
    assert(success != null);
    assert(error != null);
    assert(inProgress != null);
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(_DateAddStateSuccess value),
    Result error(_DateAddStateError value),
    Result inProgress(_DateAddStateInProgress value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _DateAddStateInProgress implements DateAddState {
  const factory _DateAddStateInProgress() = _$_DateAddStateInProgress;
}
