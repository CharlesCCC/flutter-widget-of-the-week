import 'package:flutter/material.dart';

class Week26Positioned extends StatefulWidget {
  Week26Positioned({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week26PositionedState createState() => _Week26PositionedState();
}

class _Week26PositionedState extends State<Week26Positioned> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: 400,
            height: 600,
            color: Colors.red,
          ),
          Positioned(
            top: 200,
            height: 50,
            left: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.black,
            ),
          ),
          Positioned(
            bottom: 100,
            height: 50,
            left: 50,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
