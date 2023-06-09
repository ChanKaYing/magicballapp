import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blueGrey,
        ),
        body: Ball(),
      ),
    );
  }
}



class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 0;

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ramdomize();
                  });
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void ramdomize() {
    ballNumber = Random().nextInt(5) + 1;
  }
}

