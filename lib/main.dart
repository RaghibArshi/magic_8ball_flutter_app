import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text("Ask Me Anything"),
        centerTitle: true,
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget{
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball>{

  var ballNumber = 1;
  void selectBall(){
    setState(() {
      ballNumber = Random().nextInt(5)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: FlatButton(
            onPressed: () {
              selectBall();
              print("I got clicked $ballNumber");
            },
            child: Image(image: AssetImage("images/ball$ballNumber.png"),
            ),
          ),
        ),
      ],
    );
  }
}
