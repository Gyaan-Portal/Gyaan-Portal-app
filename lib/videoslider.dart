import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'package:kreyative/main.dart';
import 'package:video_player/video_player.dart';

class ChewieDemo extends StatefulWidget {
  @override
  _ChewieDemoState createState() => _ChewieDemoState();
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  VideoPlayerController _videoPlayerController3;
  VideoPlayerController _videoPlayerController4;
  VideoPlayerController _videoPlayerController5;
  VideoPlayerController _videoPlayerController6;
  VideoPlayerController _videoPlayerController7;
  ChewieController _chewieController;
  ChewieController _chewieController2;
  ChewieController _chewieController3;
  ChewieController _chewieController4;
  ChewieController _chewieController5;
  ChewieController _chewieController6;
  ChewieController _chewieController7;

  void initState() {
    super.initState();
    _videoPlayerController1 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4');
    _videoPlayerController2 = VideoPlayerController.asset('assets/Flowers.mp4');
    _videoPlayerController3 = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4');
    _videoPlayerController4 =
        VideoPlayerController.asset('assets/Information.mp4');
    _videoPlayerController5 = VideoPlayerController.asset('assets/Sample.mp4');
    _videoPlayerController6 = VideoPlayerController.network(
        'http://techslides.com/demos/sample-videos/small.mp4');
    _videoPlayerController7 = VideoPlayerController.network(
        'https://ia903001.us.archive.org/16/items/SampleVideo1280x7202mb_201905/SampleVideo_1280x720_2mb.mp4');

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );

    _chewieController2 = ChewieController(
      videoPlayerController: _videoPlayerController2,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
    _chewieController3 = ChewieController(
      videoPlayerController: _videoPlayerController3,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
    _chewieController4 = ChewieController(
      videoPlayerController: _videoPlayerController4,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
    _chewieController5 = ChewieController(
      videoPlayerController: _videoPlayerController5,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
    _chewieController6 = ChewieController(
      videoPlayerController: _videoPlayerController6,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
    _chewieController7 = ChewieController(
      videoPlayerController: _videoPlayerController7,
      aspectRatio: 4 / 3,
      autoPlay: true,
      looping: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Course videos')),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: [
              Chewie(
                controller: _chewieController6,
              ),
              Chewie(
                controller: _chewieController,
              ),
              Chewie(
                controller: _chewieController2,
              )
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: [
              Chewie(
                controller: _chewieController2,
              ),
              Chewie(
                controller: _chewieController7,
              ),
              Chewie(
                controller: _chewieController3,
              ),
              Chewie(
                controller: _chewieController2,
              )
            ],
          ),
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: [
              Chewie(
                controller: _chewieController3,
              ),
              Chewie(
                controller: _chewieController2,
              )
            ],
          ),
        ],
      )),
    );
  }
}
