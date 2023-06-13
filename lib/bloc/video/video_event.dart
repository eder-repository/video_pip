part of 'video_bloc.dart';

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.play() = _VideoPlay;
  const factory VideoEvent.detectPlay() = _DetectPlay;
}
