import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('8 ball')),
      ),
      body: const EightBall(),
    ),
  ));
}

class EightBall extends StatefulWidget {
  const EightBall({Key? key}) : super(key: key);

  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int tapBall = 1;

  void ballFun() {
    setState(() {
      tapBall = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(child: Image.asset('images/ball$tapBall.png')),
    );
  }
}
