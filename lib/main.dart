import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask me anything'),
            backgroundColor: Colors.blue.shade900,
          ),
          body: magic8Ball(),
        ),
      ),
    );

class magic8Ball extends StatefulWidget {
  @override
  _magic8BallState createState() => _magic8BallState();
}

class _magic8BallState extends State<magic8Ball> {
  int magicBall = 1;

  void changeBall() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
