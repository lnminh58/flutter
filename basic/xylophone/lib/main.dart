import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber[900],
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              InstrumentNode(color: Colors.red, soundNumber: 1),
              InstrumentNode(color: Colors.amber, soundNumber: 2),
              InstrumentNode(color: Colors.yellow, soundNumber: 3),
              InstrumentNode(color: Colors.green, soundNumber: 4),
              InstrumentNode(color: Colors.blue, soundNumber: 5),
              InstrumentNode(color: Colors.purple.shade900, soundNumber: 6),
              InstrumentNode(color: Colors.black, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

class InstrumentNode extends StatelessWidget {
  const InstrumentNode({
    Key key,
    this.color,
    this.soundNumber,
  }) : super(key: key);

  void playSound(soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  final Color color;

  final int soundNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: this.color,
        onPressed: () {
          playSound(this.soundNumber);
        },
      ),
    );
  }
}
