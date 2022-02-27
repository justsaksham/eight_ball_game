import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[600],
          appBar: AppBar(
            title: Text('Ask Me Aynthing'),
            backgroundColor: Colors.blue[900],
          ),
          body: Balls(),
        ),
      ),
    );

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int ballNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: TextButton(
          onPressed: () {
            setState(() {
              ballNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
