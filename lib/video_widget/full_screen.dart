import 'package:flutter/material.dart';
import 'package:youtobe_example/video_widget/player_screen.dart';

class FullScreen extends StatelessWidget {
  const FullScreen({Key? key, required this.assetImg}) : super(key: key);

  final String assetImg;

  @override
  Widget build(BuildContext context) {
    final type = assetImg.split('.').last;
    return Material(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Stack(
            children: [
              SizedBox(
                  child: type.contains('mp4')
                      ? PlayerScreen(
                          assetVideo: assetImg,
                          height: null,
                          isRemove: true,
                        )
                      : Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.zero,
                                topRight: Radius.zero,
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(assetImg),
                                  fit: BoxFit.contain)),
                        )),
              Positioned(
                top: 10,
                left: 10,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
