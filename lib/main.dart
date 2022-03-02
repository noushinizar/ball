import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    home: BallPage(),
  ));
}
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
        
      ),
      
    );
  }
}
class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballnumber=1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: TextButton(onPressed: (){
          setState(() {
           ballnumber=Random().nextInt(5)+1;
          });
        }, child: Image.asset('images/ball$ballnumber.png')),
      ),
    );
  }
}

