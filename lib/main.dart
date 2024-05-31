// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

// ignore: must_be_immutable
class Homepage extends StatelessWidget {
  const Homepage({super.key});
  void playsound(int soundnumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$soundnumber.wav'),
    );
  }

  Expanded buildkey(Color color, int soundnumber) {
    return Expanded(
      child: MaterialButton(
        padding: EdgeInsets.zero,
        child: Container(
          color: color,
        ),
        onPressed: () {
          final player = AudioPlayer();
          player.play(
            AssetSource('note$soundnumber.wav'),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            buildkey(Colors.red, 1),
            buildkey(Colors.orange, 2),
            buildkey(Colors.yellow, 3),
            buildkey(Colors.green, 4),
            buildkey(Colors.blue, 5),
            buildkey(Colors.indigo, 6),
            buildkey(Colors.purple, 7),
          ],
        ),
      ),
    );
  }
}
