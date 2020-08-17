import 'package:flutter/material.dart';

class Week16ClipRRect extends StatefulWidget {
  Week16ClipRRect({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week16ClipRRectState createState() => _Week16ClipRRectState();
}

class _Week16ClipRRectState extends State<Week16ClipRRect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              clipBehavior: Clip.hardEdge,
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
            SizedBox(
              height: 20,
            ),
            ClipOval(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network('https://picsum.photos/250?image=9'),
            ),
          ],
        ),
      ),
    );
  }
}
