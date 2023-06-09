import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pip_view/pip_view.dart';
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
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          body: PIPView(
              floatingHeight: 500,
              floatingWidth: 400,
              builder: (context, isFloating) {
                return Column(
                  children: [
                    if (isFloating)
                      const Expanded(
                        child: PlayerScreen(
                            assetVideo: 'assets/video/test.mp4',
                            isRemove: true),
                      )
                    else
                      Expanded(
                          child: Column(
                        children: [
                          const PlayerScreen(
                              assetVideo: 'assets/video/test.mp4',
                              isRemove: true),
                          MaterialButton(
                            child: Text('Start floating'),
                            onPressed: () {
                              PIPView.of(context)
                                  ?.presentBelow(MyBackgroundScreen());
                            },
                          ),
                        ],
                      )),
                  ],
                );
              }),
        ));
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
      body: Text('This is my background screen!'),
    );
  }
}
