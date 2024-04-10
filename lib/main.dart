import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main()=>runApp(Xylophone());


class Xylophone extends StatelessWidget {

  void audio(int n)
  {
    final player=AudioCache();
    player.play('note$n.wav');
  }

  Expanded widget( Color color, int k)
  {
    return Expanded(
      child: Container(
        color: color,
        child: TextButton(
          onPressed: (){
            audio(k);
          },
          child: Text('BUTTON ',
            style: TextStyle(
              color: color,
            ),
          ),
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
              children:<Widget> [
                widget( Colors.deepPurple,  1),
                widget( Colors.indigo, 2),
                widget( Colors.blue,  3),
                widget( Colors.green,  4),
                widget( Colors.yellow,  5),
                widget( Colors.orange,  6),
                widget( Colors.red,  7),
              ],
            )
        ),
      ),
    );
  }
}

