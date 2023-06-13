import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_player/video_player.dart';

part 'video_event.dart';
part 'video_state.dart';
part 'video_bloc.freezed.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState> {
  VideoBloc() : super(VideoState()) {
    on<_VideoPlay>(_videoPlay);
    on<_DetectPlay>(_detectPlay);
  }

  late final VideoPlayerController _controller;
  VideoPlayerController get controller => _controller;

  void init(String assetVideo) {
    _controller = VideoPlayerController.asset(assetVideo);
  }

  FutureOr<void> _videoPlay(_VideoPlay event, Emitter<VideoState> emit) {
    if (_controller.value.isPlaying) {
      _controller.pause();
      emit(state.copyWith(isPlaying: _controller.value.isPlaying));
    } else {
      _controller.play();
      emit(state.copyWith(isPlaying: _controller.value.isPlaying));
    }
  }

  FutureOr<void> _detectPlay(_DetectPlay event, Emitter<VideoState> emit) {
    emit(state.copyWith(isPlaying: _controller.value.isPlaying));
  }
}
