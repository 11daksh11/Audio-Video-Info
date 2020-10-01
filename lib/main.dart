import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
//import 'package:fluttertoast/fluttertoast.dart';
import 'package:statusbar/statusbar.dart';
//import 'package:video_player/video_player.dart';
//import 'package:audioplayers/audioplayers.dart';
import 'UI/home.dart';

main() {
  runApp(VideoApp());
}

class VideoApp extends StatefulWidget {
  @override
  _VideoAppState createState() => _VideoAppState();
}

class _VideoAppState extends State<VideoApp> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://11daksh11.github.io/Fluuter/Particles%20Flying%20Up%20-%20Free%20HD%20Animation%20Black%20Background.mp4')
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
//

    var body = Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      //color: Colors.black,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Stack(
            alignment: Alignment.topCenter,
            children: <Widget>[
              Container(
                alignment: Alignment.bottomCenter,
                child: new Center(
                  child: _controller.value.initialized
                      ? AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        )
                      : Container(),
                ),
              ),
              SizedBox(
                height: 300,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(60),
                  width: 350,
                  height: 180,
                  //color: Colors.white,
                  //margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Daksh Malik",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      new SizedBox(
                        height: 15,
                      ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          //MainAxisAlignment.center,
                          new IconButton(
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            onPressed: mypress,
                          ),
                          new SizedBox(
                            width: 5,
                          ),
                          new Text(
                            "malikdaksh115@gmai.com",
                            style: TextStyle(
                              fontSize: 15,
                              //fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onLongPress: myprint,
                child: Container(
                  alignment: Alignment.center,
                  //padding: EdgeInsets.all(15),
                  width: 100,
                  height: 100,
                  //color: Colors.greenAccent,
                  //child: Text('hey guys'),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        blurRadius: 15.0, // soften the shadow
                        spreadRadius: 3.0, //extend the shadow
                        offset: Offset(
                          0.0, // Move to right 10  horizontally
                          5.0, // Move to bottom 10 Vertically
                        ),
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage("assets/images/daksh2.jpeg"),
                      fit: BoxFit.cover,
                      //Image.network("https://11daksh11.github.io/Fluuter/daksh2.jpeg"),
                    ),
                    borderRadius: BorderRadius.circular(75),
                    /*border: Border.all(
                  width: 3,
                  color: Colors.grey,
                ),*/
                  ),
                ),
              ),
              /*Container(
            width: 100,
            height: 120,
            color: Colors.black,
          ),*/
            ],
          ),
        ],
      ),
    );
    return MaterialApp(
      title: 'Video Demo',
      home: Scaffold(
        appBar: apps,
        body: body,
        floatingActionButton: Container(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            backgroundColor: Colors.black,
            hoverColor: Colors.white,
            onPressed: () {
              setState(() {
                _controller.value.isPlaying
                    ? _controller.pause()
                    : _controller.play();
              });
            },
            child: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
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
