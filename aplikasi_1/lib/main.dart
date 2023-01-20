import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget{
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded noteWidget({required Color color, required int soundNumber}){

    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        }, child: new Text(""),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
      ),
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
            children: [
              noteWidget(color: Colors.red,soundNumber: 1),
              noteWidget(color: Colors.orange,soundNumber: 2),
              noteWidget(color: Colors.yellow,soundNumber: 3),
              noteWidget(color: Colors.green,soundNumber: 4),
              noteWidget(color: Colors.blue,soundNumber: 5),
              noteWidget(color: Colors.teal,soundNumber: 6),
              noteWidget(color: Colors.purple,soundNumber: 7),
            ],
          ),

        ),
      ),
    );
  }
}