import 'package:flutter/material.dart';

class Week33Flexible extends StatefulWidget {
  Week33Flexible({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week33FlexibleState createState() => _Week33FlexibleState();
}

class _Week33FlexibleState extends State<Week33Flexible> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.red,
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
