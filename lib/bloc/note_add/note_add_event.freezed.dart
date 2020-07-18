// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_add_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NoteAddEventTearOff {
  const _$NoteAddEventTearOff();

// ignore: unused_element
  _NoteAddEventSaved saved({String content}) {
    return _NoteAddEventSaved(
      content: content,
    );
  }
}

// ignore: unused_element
const $NoteAddEvent = _$NoteAddEventTearOff();

mixin _$NoteAddEvent {
  String get content;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(String content),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String content),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_NoteAddEventSaved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_NoteAddEventSaved value),
    @required Result orElse(),
  });

  $NoteAddEventCopyWith<NoteAddEvent> get copyWith;
}

abstract class $NoteAddEventCopyWith<$Res> {
  factory $NoteAddEventCopyWith(
          NoteAddEvent value, $Res Function(NoteAddEvent) then) =
      _$NoteAddEventCopyWithImpl<$Res>;
  $Res call({String content});
}

class _$NoteAddEventCopyWithImpl<$Res> implements $NoteAddEventCopyWith<$Res> {
  _$NoteAddEventCopyWithImpl(this._value, this._then);

  final NoteAddEvent _value;
  // ignore: unused_field
  final $Res Function(NoteAddEvent) _then;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(_value.copyWith(
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

abstract class _$NoteAddEventSavedCopyWith<$Res>
    implements $NoteAddEventCopyWith<$Res> {
  factory _$NoteAddEventSavedCopyWith(
          _NoteAddEventSaved value, $Res Function(_NoteAddEventSaved) then) =
      __$NoteAddEventSavedCopyWithImpl<$Res>;
  @override
  $Res call({String content});
}

class __$NoteAddEventSavedCopyWithImpl<$Res>
    extends _$NoteAddEventCopyWithImpl<$Res>
    implements _$NoteAddEventSavedCopyWith<$Res> {
  __$NoteAddEventSavedCopyWithImpl(
      _NoteAddEventSaved _value, $Res Function(_NoteAddEventSaved) _then)
      : super(_value, (v) => _then(v as _NoteAddEventSaved));

  @override
  _NoteAddEventSaved get _value => super._value as _NoteAddEventSaved;

  @override
  $Res call({
    Object content = freezed,
  }) {
    return _then(_NoteAddEventSaved(
      content: content == freezed ? _value.content : content as String,
    ));
  }
}

class _$_NoteAddEventSaved
    with DiagnosticableTreeMixin
    implements _NoteAddEventSaved {
  const _$_NoteAddEventSaved({this.content});

  @override
  final String content;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NoteAddEvent.saved(content: $content)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NoteAddEvent.saved'))
      ..add(DiagnosticsProperty('content', content));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NoteAddEventSaved &&
            (identical(other.content, content) ||
                const DeepCollectionEquality().equals(other.content, content)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(content);

  @override
  _$NoteAddEventSavedCopyWith<_NoteAddEventSaved> get copyWith =>
      __$NoteAddEventSavedCopyWithImpl<_NoteAddEventSaved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result saved(String content),
  }) {
    assert(saved != null);
    return saved(content);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result saved(String content),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result saved(_NoteAddEventSaved value),
  }) {
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result saved(_NoteAddEventSaved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _NoteAddEventSaved implements NoteAddEvent {
  const factory _NoteAddEventSaved({String content}) = _$_NoteAddEventSaved;

  @override
  String get content;
  @override
  _$NoteAddEventSavedCopyWith<_NoteAddEventSaved> get copyWith;
}
