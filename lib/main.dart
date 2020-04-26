import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(BallPage());

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[600],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(child: Text('Ask Me Anything')),
        ),
        body: Ball(
          
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset(
              'images/ball$ballNumber.png'
          ),
        ),
      ),
    );
  }
}


