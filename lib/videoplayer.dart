import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'data.dart';
import 'package:auto_orientation/auto_orientation.dart';
import 'package:flutter/services.dart';


class ServerVideo extends StatefulWidget {
  ServerVideo({this.title = 'Video'});
  final String title;
  @override
  State<StatefulWidget> createState() {
    return _ServerVideoState();
  }
}

class _ServerVideoState extends State<ServerVideo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController=VideoPlayerController.network(VideoUrl);
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      aspectRatio: 3 / 2,
      autoPlay: true,
      looping: true,

      // Try playing around with some of these other options:

      showControls: true,

      placeholder: Container(
        color: Colors.grey,
      ),
      // autoInitialize: true,
    );
  }

  @override
  void dispose() {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _videoPlayerController.dispose();
    _chewieController.dispose();
    AutoOrientation.portraitMode();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: widget.title,
      theme: ThemeData.light().copyWith(
        platform: _platform ?? Theme.of(context).platform,
      ),
      home: Scaffold(
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        body: Center(
          child: Chewie(
            controller: _chewieController,

          ),
        ),
      ),
    );
  }
}
