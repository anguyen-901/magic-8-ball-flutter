import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.blue[900],
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNum = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNum = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset("images/ball$ballNum.png"),
            ),
          )
        ],
      ),
    );
  }
}
