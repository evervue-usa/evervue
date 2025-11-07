import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final String source;

  const VideoPlayerWidget({super.key, required this.source});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerOptions videoPlayerOptions;
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    videoPlayerOptions = VideoPlayerOptions(mixWithOthers: true);
    _controller = VideoPlayerController.asset(
      widget.source,
      videoPlayerOptions: videoPlayerOptions,
    )
      ..setVolume(0.0)
      ..setLooping(true);
    _initializeVideoPlayer();
  }

  void _initializeVideoPlayer() async {
    await _controller.initialize();
    setState(() {
      _isInitialized = true;
    });
    _controller.play();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isInitialized
        ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
        : Container(
            color: Colors.transparent,
            child: const Center(
              child: CircularProgressIndicator(
                color: Color.fromARGB(255, 168, 0, 0),
              ),
            ),
          );
  }
}
