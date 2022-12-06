import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Videodis extends StatefulWidget {
  final String vidUrl;
  const Videodis({Key? key, required this.vidUrl}) : super(key: key);

  @override
  _VideodisState createState() => _VideodisState();
}

class _VideodisState extends State<Videodis> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    _controller = VideoPlayerController.asset(widget.vidUrl)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
