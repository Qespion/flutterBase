import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int name) {
    final player = AudioCache();
    player.play('note$name.wav');
  }

  Expanded buildKey({Color color, int soundNb}) {
    return Expanded(
      child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNb);
          },
          child: Text('')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.redAccent, soundNb: 1),
              buildKey(color: Colors.orange, soundNb: 2),
              buildKey(color: Colors.yellow, soundNb: 3),
              buildKey(color: Colors.green, soundNb: 4),
              buildKey(color: Colors.teal, soundNb: 5),
              buildKey(color: Colors.blue, soundNb: 6),
              buildKey(color: Colors.purple, soundNb: 7),
            ],
          ),
        ),
      ),
    );
  }
}
