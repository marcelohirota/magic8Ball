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
          body: magicBall(),
        ),
      ),
    );

// ignore: camel_case_types
class magicBall extends StatefulWidget {
  @override
  _magicBallState createState() => _magicBallState();
}

// ignore: camel_case_types
class _magicBallState extends State<magicBall> {
  int magicBall = 1;

  void changeBall() {
    setState(() {
      magicBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeBall();
              },
              child: Image.asset('images/ball$magicBall.png'),
            ),
          ),
        ],
      ),
    );
  }
}
