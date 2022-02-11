import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  final player = AudioCache();

  Expanded buildKey(MaterialColor color, int soundNumber) {
    return Expanded(
      child: TextButton(
        child: null,
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () => playSound(soundNumber),
      ),
    );
  }

  void playSound(int number) => player.play('note$number.wav');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.green, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.teal, 4),
              buildKey(Colors.orange, 5),
              buildKey(Colors.purple, 6),
              buildKey(Colors.cyan, 7),
            ],
          ),
        ),
      ),
    );
  }
}
