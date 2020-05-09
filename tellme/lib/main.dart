import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'tellme',
           style: TextStyle(
             fontSize: 25.0,
           ),
        ),
      ),
      body: tellpage(),
    ),
  ),
);

class tellpage extends StatefulWidget {
  @override
  _tellpageState createState() => _tellpageState();
}

class _tellpageState extends State<tellpage> {
  int imno = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            onPressed: () {
              setState(() {
                imno = Random().nextInt(5)+1;
              });
            },
            child:
            Image.asset('images/ball$imno.png'),
          ),
        ],
      ),
    );
  }
}
