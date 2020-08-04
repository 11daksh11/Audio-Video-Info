import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:video_player/video_player.dart';
//import 'package:assets_audio_player/assets_audio_player.dart';
//import 'package:statusbar/statusbar.dart';
//import 'package:video_player/video_player.dart';
import 'package:audioplayers/audio_cache.dart';
//import 'package:audioplayers/audioplayers.dart';

myprint() {
  print("Picture");
  Fluttertoast.showToast(
    msg: " Photo se hath Hata de",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.white,
    textColor: Colors.black,
  );
}

myaudio() {
  final player = AudioCache();
  player.play('audio/1.mp3');
}

mypress() {
  Fluttertoast.showToast(
    msg: " You clicked the Right Email Icon",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.white,
    textColor: Colors.black,
  );
/*Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );*/
}

var ibody = new Container(
  alignment: Alignment.center,
  width: double.infinity,
  height: double.infinity,
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
      new Container(),
    ],
  ),
);
homee() {
  Fluttertoast.showToast(
    msg: "Home Button hai yeh",
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.white,
    textColor: Colors.black,
  );
}

var apps = AppBar(
  backgroundColor: Colors.black,
  title: Text(
    "My Info",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
  leading: IconButton(
      icon: Icon(
        Icons.home,
      ),
      onPressed: homee),
  actions: <Widget>[
    new IconButton(
      icon: Icon(
        Icons.call,
      ),
      onPressed: myaudio,
    ),
  ],
);
