import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pip_view/pip_view.dart';
import 'package:youtobe_example/bloc/video/video_bloc.dart';
import 'package:youtobe_example/video_widget/new_page.dart';
import 'package:youtobe_example/video_widget/player_screen.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
// import 'package:pip_view/pip_view.dart';

void main() => runApp(const MyApp());

const List<String> _videoIds = [
  'tcodrIK2P_I',
  'H5v3kku4y6Q',
  'nPt8bK2gbaU',
  'K18cpp_-gP8',
  'iLnmTe5Q2Qw',
  '_WoCV4c6XOE',
  'KmzdUe0RSJo',
  '6jZDSSZZxjQ',
  'p2lYr3vM_1w',
  '7QUtEmBT_-w',
  '34_PXCzGw1M'
];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      params: const YoutubePlayerParams(
        showControls: true,
        mute: false,
        showFullscreenButton: true,
        loop: false,
      ),
    );

    _controller.setFullScreenListener(
      (isFullScreen) {
        log('${isFullScreen ? 'Entered' : 'Exited'} Fullscreen.');
      },
    );

    _controller.loadPlaylist(
      list: _videoIds,
      listType: ListType.playlist,
      startSeconds: 136,
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = 150.0;
    return BlocProvider(
      create: (context) => VideoBloc(),
      child: MaterialApp(
          title: 'Material App',
          home: SafeArea(
            child: BlocBuilder<VideoBloc, VideoState>(
              builder: (context, state) {
                return Scaffold(
                  body: Center(
                    child: LayoutBuilder(builder: (context, c) {
                      return Center(
                        child: PIPView(
                            onPlay: () {
                              final bloc = context.read<VideoBloc>();

                              bloc
                                ..add(const VideoEvent.play())
                                ..add(const VideoEvent.detectPlay());
                            },
                            floatingHeight: height,
                            floatingWidth: 300,
                            isPlaying: state.isPlaying,
                            builder: (context, isFloating) {
                              return SingleChildScrollView(
                                child: Column(
                                  children: [
                                    PlayerScreen(
                                      height: isFloating ? height : 200,
                                      assetVideo: 'assets/video/test.mp4',
                                      isPlay: isFloating ? false : true,
                                      extendVideo: () {
                                        PIPView.of(context)?.presentBelow(
                                            MyBackgroundScreen());
                                      },
                                    ),
                                  ],
                                ),
                              );
                            }),
                      );
                    }),
                  ),
                );
              },
            ),
          )),
    );
  }

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }
}

class MyBackgroundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('This is my background screen!'),
          MaterialButton(
              child: Text('navegar'),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => NewScreen(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
