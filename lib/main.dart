import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Magic 8 Ball'),
          backgroundColor: Colors.grey[800],
        ),
        body: MagicPage(),
      ),
    ),
  );
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballAnswer = 1;

  void shakeBall() {
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                shakeBall();
              },
              child: Image.asset('images/ball$ballAnswer.png'),
            )
          ],
        ),
      ),
      duration: Duration(seconds: 2),
    );
  }
}
