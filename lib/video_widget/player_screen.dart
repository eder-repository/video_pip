import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_player/video_player.dart';
import 'package:youtobe_example/bloc/video/video_bloc.dart';
import 'package:youtobe_example/video_widget/full_screen.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen(
      {Key? key,
      required this.assetVideo,
      this.height = 400,
      this.isRemove = false,
      this.isPlay = true,
      this.extendVideo})
      : super(key: key);

  final String assetVideo;
  final double? height;
  final bool isRemove;
  final bool isPlay;
  final VoidCallback? extendVideo;

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen>
    with AutomaticKeepAliveClientMixin {
  late bool click = false;
  @override
  void initState() {
    super.initState();
    final bloc = context.read<VideoBloc>();

    bloc.init(widget.assetVideo);
    print('object');

    bloc.controller.addListener(() {
      setState(() {});
    });
    bloc.controller.setLooping(true);
    bloc.controller.initialize().then((_) => setState(() {}));
  }

  @override
  void dispose() {
    context.read<VideoBloc>().controller.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<VideoBloc>();
    super.build(context);
    return GestureDetector(
      onTap: () {
        click = !click;
        print(click);
        setState(() {});
        if (click) {
          Future.delayed(const Duration(seconds: 2)).then((value) {
            click = false;
            setState(() {});
          });
        }
      },
      child: Stack(
        children: [
          Column(
            children: <Widget>[
              Container(
                // clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                height: widget.height,
                // padding: const EdgeInsets.all(20),
                child: Container(
                  height: widget.height,
                  child: AspectRatio(
                    aspectRatio: 8 / 7,
                    child: LayoutBuilder(builder: (context, x) {
                      return Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          VideoPlayer(bloc.controller),
                          if (widget.isPlay)
                            _ControlsOverlay(
                              click: click,
                              controller: bloc.controller,
                              extendVideo: widget.extendVideo,
                            ),
                          VideoProgressIndicator(bloc.controller,
                              allowScrubbing: true),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
          if (widget.isRemove)
            Positioned(
                bottom: 10,
                right: 10,
                child: GestureDetector(
                  onTap: () {
                    Route route = MaterialPageRoute(
                        builder: (context) => FullScreen(
                              assetImg: widget.assetVideo,
                            ));
                    Navigator.push(context, route);
                  },
                  child: const CircleAvatar(
                    child: Icon(
                      Icons.fullscreen_exit,
                      color: Colors.blueAccent,
                    ),
                  ),
                )),
        ],
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  const _ControlsOverlay(
      {Key? key,
      required this.controller,
      this.extendVideo,
      required this.click})
      : super(key: key);
  final VoidCallback? extendVideo;
  final bool click;

  static const List<Duration> _exampleCaptionOffsets = <Duration>[
    Duration(seconds: -10),
    Duration(seconds: -3),
    Duration(seconds: -1, milliseconds: -500),
    Duration(milliseconds: -250),
    Duration.zero,
    Duration(milliseconds: 250),
    Duration(seconds: 1, milliseconds: 500),
    Duration(seconds: 3),
    Duration(seconds: 10),
  ];
  static const List<double> _examplePlaybackRates = <double>[
    0.25,
    0.5,
    1.0,
    1.5,
    2.0,
    3.0,
    5.0,
    10.0,
  ];

  final VideoPlayerController controller;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<VideoBloc>();
    return Stack(
      children: <Widget>[
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: Stack(
            children: [
              if (click) ...[
                Container(
                  color: Colors.grey.withOpacity(.3),
                ),
                GestureDetector(
                  onTap: () {
                    bloc.add(const VideoEvent.play());
                  },
                  child: Center(
                    child: Icon(
                      controller.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                      size: 50,
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: extendVideo,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Icon(
                        Icons.picture_in_picture,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                //          click = !click;
                // print(click);
                // setState(() {});
                // if (click)
                //   Future.delayed(Duration(seconds: 2)).then((value) {
                //     click = false;
                //     setState(() {});
                //   });
              ]
            ],
          ),
        ),
        // GestureDetector(
        //   onTap: () {
        //     bloc.add(const VideoEvent.play());
        //   },
        // ),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: PopupMenuButton<Duration>(
        //     initialValue: controller.value.captionOffset,
        //     tooltip: 'Caption Offset',
        //     onSelected: (Duration delay) {
        //       controller.setCaptionOffset(delay);
        //     },
        //     itemBuilder: (BuildContext context) {
        //       return <PopupMenuItem<Duration>>[
        //         for (final Duration offsetDuration in _exampleCaptionOffsets)
        //           PopupMenuItem<Duration>(
        //             value: offsetDuration,
        //             child: Text('${offsetDuration.inMilliseconds}ms'),
        //           )
        //       ];
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.symmetric(
        //         // Using less vertical padding as the text is also longer
        //         // horizontally, so it feels like it would need more spacing
        //         // horizontally (matching the aspect ratio of the video).
        //         vertical: 12,
        //         horizontal: 16,
        //       ),
        //       child: Text('${controller.value.captionOffset.inMilliseconds}ms'),
        //     ),
        //   ),
        // ),
        if (click)
          Align(
            alignment: Alignment.topRight,
            child: PopupMenuButton<double>(
              initialValue: bloc.controller.value.playbackSpeed,
              tooltip: 'Playback speed',
              onSelected: (double speed) {
                controller.setPlaybackSpeed(speed);
              },
              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<double>>[
                  for (final double speed
                      in _ControlsOverlay._examplePlaybackRates)
                    PopupMenuItem<double>(
                      value: speed,
                      child: Text(
                        '${speed}x',
                      ),
                    )
                ];
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  // Using less vertical padding as the text is also longer
                  // horizontally, so it feels like it would need more spacing
                  // horizontally (matching the aspect ratio of the video).
                  vertical: 12,
                  horizontal: 16,
                ),
                child: Text(
                  '${controller.value.playbackSpeed}x',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
