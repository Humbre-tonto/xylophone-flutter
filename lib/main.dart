import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('XYLOPHONE')),
        backgroundColor: Colors.black,
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(1,Colors.yellow),
            buildKey(2,Colors.orange),
            buildKey(3, Colors.greenAccent),
            buildKey(4, Colors.blueAccent),
            buildKey(5, Colors.redAccent),
            buildKey(6, Colors.purpleAccent),
            buildKey(7, Colors.pinkAccent),
          ]),
        ),
      ),
    );
  }

  Widget buildKey(int tuneNumber,Color color) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playTune(tuneNumber); //call playTune Function
          },
          child: null),
    );
  }

  void playTune(int tuneNumber) {
    final player = AudioCache();
    player.play('note$tuneNumber.wav');
  }
}
