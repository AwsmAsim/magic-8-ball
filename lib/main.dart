import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(myApp());

class myApp extends StatefulWidget {
  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  int imageNumber = 1;
  void changeImage() {
    setState(() {
      imageNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text('Magic 8 Ball'),
          ),
        ),

        //Now lets design the body,
        //We will keep the image inside the coloumn so that if
        //we need to add anything else it will get added below.

        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/ball$imageNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
