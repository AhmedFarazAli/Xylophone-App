import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  void soundplay(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded musicbody({required Color color, int sound = 0}) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(color)),
        onPressed: () {
          soundplay(sound);
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                musicbody(color: Colors.red, sound: 1),
                musicbody(color: Colors.blue, sound: 2),
                musicbody(color: Colors.purple, sound: 3),
                musicbody(color: Colors.green, sound: 4),
                musicbody(color: Colors.yellow, sound: 5),
                musicbody(color: Colors.pink, sound: 6),
                musicbody(color: Colors.orange, sound: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
