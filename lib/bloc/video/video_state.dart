part of 'video_bloc.dart';

@freezed
class VideoState with _$VideoState {
  const factory VideoState({
    @Default(false) bool isPlaying,
  }) = _VideoState;
}
