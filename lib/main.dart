import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything'),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  void changeAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        //Stops image flashing
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          changeAnswer();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
