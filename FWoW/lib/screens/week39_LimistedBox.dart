import 'dart:math';

import 'package:flutter/material.dart';

class Week39LimitedBox extends StatefulWidget {
  Week39LimitedBox({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week39LimitedBoxState createState() => _Week39LimitedBoxState();
}

class _Week39LimitedBoxState extends State<Week39LimitedBox> {
  var rng = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Color.fromARGB(
                  rng.nextInt(250),
                  rng.nextInt(250),
                  rng.nextInt(250),
                  rng.nextInt(250),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
