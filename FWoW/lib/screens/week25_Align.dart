import 'package:flutter/material.dart';

class Week25Align extends StatefulWidget {
  Week25Align({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week25AlignState createState() => _Week25AlignState();
}

class _Week25AlignState extends State<Week25Align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.red,
          child: Text('Align BottomRight'),
        ),
      ),
    );
  }
}
