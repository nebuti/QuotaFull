import 'package:flutter/material.dart';
import 'package:mouse/car_sedan.dart';
import 'package:video_player/video_player.dart';

void main() => runApp(const car_detail());

/// Stateful widget to fetch and then display video content.
class car_detail extends StatefulWidget {
  const car_detail({Key? key}) : super(key: key);

  @override
  _car_detailState createState() => _car_detailState();
}

class _car_detailState extends State<car_detail> {
  late VideoPlayerController _controller;
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    'assets/images/c4.png',
    'assets/images/h20.png',
    'assets/images/h5.png',
  ];

  @override
  void initState() {
    super.initState();
    // _controller = VideoPlayerController.network(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
    _controller = VideoPlayerController.asset("videos/sample.mp4")
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => car_sedan()));
              }),
          title: const Text('Detaile information of car'),
          backgroundColor: Color.fromARGB(255, 79, 230, 9),
        ),
        // ignore: unnecessary_new
        body: new Column(children: <Widget>[
          Container(
            height: 200,
            child: Column(
              children: [
                new Text(
                  "Description:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.black.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                new Text(
                  "Condition:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 7,
                      color: Color.fromARGB(255, 39, 38, 38).withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                new Text(
                  "Transmission:  ",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 7,
                      color: Color.fromARGB(255, 39, 38, 38).withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
              child: Column(children: [
            SizedBox(
              height: 150,
              width: double.infinity,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index % images.length;
                  });
                },
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        images[index % images.length],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < images.length; i++)
                  buildIndicator(currentIndex == i)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.jumpToPage(currentIndex - 1);
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(
                    onPressed: () {
                      controller.jumpToPage(currentIndex + 1);
                    },
                    icon: Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ),
          ])),
          _controller.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                )
              : Container(),
        ]),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
              _controller.setLooping(true);
              _controller.setVolume(1.0);
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

Widget buildIndicator(bool isSelected) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 1),
    child: Container(
      height: isSelected ? 12 : 10,
      width: isSelected ? 12 : 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.black : Colors.grey,
      ),
    ),
  );
}
