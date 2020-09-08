import 'package:flutter/material.dart';

class Week38AspectRatio extends StatefulWidget {
  Week38AspectRatio({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week38AspectRatioState createState() => _Week38AspectRatioState();
}

class _Week38AspectRatioState extends State<Week38AspectRatio> {
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
            AspectRatio(
              aspectRatio: 5 / 2,
              child: Container(
                  color: Colors.red,
                  width: 5,
                  height: 5,
                  child: Text(
                    '5/2 Ratio',
                  )),
            ),
            SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                  color: Colors.blue,
                  width: 5,
                  height: 5,
                  child: Text(
                    '3/2 Ratio',
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
