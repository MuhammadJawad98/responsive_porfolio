import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  const YoutubeVideoPlayer({Key? key}) : super(key: key);

  @override
  _YoutubeVideoPlayerState createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayerController.convertUrlToId(
          'https://www.youtube.com/watch?v=Hpmf5yMEKgw')!,
      params: const YoutubePlayerParams(
        loop: true,
        color: 'transparent',
        desktopMode: true,
        strictRelatedVideos: true,
        showFullscreenButton: false,
        // origin : 'https://www.youtube.com/channel/UC6kMl0JiGiKZlH9v3FjDlHg'
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width < 1450
        ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: YoutubePlayerControllerProvider(
              controller: _controller,
              child: YoutubePlayerIFrame(
                controller: _controller,
                aspectRatio: 16 / 9,
              ),
            ),
          )
        : Row(
      mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 1000,
                height: 500,
                child: YoutubePlayerControllerProvider(
                  controller: _controller,
                  child: YoutubePlayerIFrame(
                    controller: _controller,
                    aspectRatio: 16 / 9,
                  ),
                ),
              ),
            ],
          );
  }
}
