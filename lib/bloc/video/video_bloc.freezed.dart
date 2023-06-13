// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() detectPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? detectPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? detectPlay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlay value) play,
    required TResult Function(_DetectPlay value) detectPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoPlay value)? play,
    TResult? Function(_DetectPlay value)? detectPlay,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlay value)? play,
    TResult Function(_DetectPlay value)? detectPlay,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_VideoPlayCopyWith<$Res> {
  factory _$$_VideoPlayCopyWith(
          _$_VideoPlay value, $Res Function(_$_VideoPlay) then) =
      __$$_VideoPlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_VideoPlayCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_VideoPlay>
    implements _$$_VideoPlayCopyWith<$Res> {
  __$$_VideoPlayCopyWithImpl(
      _$_VideoPlay _value, $Res Function(_$_VideoPlay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_VideoPlay implements _VideoPlay {
  const _$_VideoPlay();

  @override
  String toString() {
    return 'VideoEvent.play()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_VideoPlay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() detectPlay,
  }) {
    return play();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? detectPlay,
  }) {
    return play?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? detectPlay,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlay value) play,
    required TResult Function(_DetectPlay value) detectPlay,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoPlay value)? play,
    TResult? Function(_DetectPlay value)? detectPlay,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlay value)? play,
    TResult Function(_DetectPlay value)? detectPlay,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _VideoPlay implements VideoEvent {
  const factory _VideoPlay() = _$_VideoPlay;
}

/// @nodoc
abstract class _$$_DetectPlayCopyWith<$Res> {
  factory _$$_DetectPlayCopyWith(
          _$_DetectPlay value, $Res Function(_$_DetectPlay) then) =
      __$$_DetectPlayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DetectPlayCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$_DetectPlay>
    implements _$$_DetectPlayCopyWith<$Res> {
  __$$_DetectPlayCopyWithImpl(
      _$_DetectPlay _value, $Res Function(_$_DetectPlay) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DetectPlay implements _DetectPlay {
  const _$_DetectPlay();

  @override
  String toString() {
    return 'VideoEvent.detectPlay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DetectPlay);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() play,
    required TResult Function() detectPlay,
  }) {
    return detectPlay();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? play,
    TResult? Function()? detectPlay,
  }) {
    return detectPlay?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? play,
    TResult Function()? detectPlay,
    required TResult orElse(),
  }) {
    if (detectPlay != null) {
      return detectPlay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VideoPlay value) play,
    required TResult Function(_DetectPlay value) detectPlay,
  }) {
    return detectPlay(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_VideoPlay value)? play,
    TResult? Function(_DetectPlay value)? detectPlay,
  }) {
    return detectPlay?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VideoPlay value)? play,
    TResult Function(_DetectPlay value)? detectPlay,
    required TResult orElse(),
  }) {
    if (detectPlay != null) {
      return detectPlay(this);
    }
    return orElse();
  }
}

abstract class _DetectPlay implements VideoEvent {
  const factory _DetectPlay() = _$_DetectPlay;
}

/// @nodoc
mixin _$VideoState {
  bool get isPlaying => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VideoStateCopyWith<VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VideoStateCopyWith<$Res>
    implements $VideoStateCopyWith<$Res> {
  factory _$$_VideoStateCopyWith(
          _$_VideoState value, $Res Function(_$_VideoState) then) =
      __$$_VideoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPlaying});
}

/// @nodoc
class __$$_VideoStateCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$_VideoState>
    implements _$$_VideoStateCopyWith<$Res> {
  __$$_VideoStateCopyWithImpl(
      _$_VideoState _value, $Res Function(_$_VideoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPlaying = null,
  }) {
    return _then(_$_VideoState(
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_VideoState implements _VideoState {
  const _$_VideoState({this.isPlaying = false});

  @override
  @JsonKey()
  final bool isPlaying;

  @override
  String toString() {
    return 'VideoState(isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VideoState &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      __$$_VideoStateCopyWithImpl<_$_VideoState>(this, _$identity);
}

abstract class _VideoState implements VideoState {
  const factory _VideoState({final bool isPlaying}) = _$_VideoState;

  @override
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$_VideoStateCopyWith<_$_VideoState> get copyWith =>
      throw _privateConstructorUsedError;
}
