import 'package:flutter/material.dart';

class Week22AbsorbPointer extends StatefulWidget {
  Week22AbsorbPointer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week22AbsorbPointerState createState() => _Week22AbsorbPointerState();
}

class _Week22AbsorbPointerState extends State<Week22AbsorbPointer> {
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
            Text(
              'Touchable Area - DoubleTap',
            ),
            GestureDetector(
              onDoubleTap: () {
                print("Double Tapped");
              },
              child: Container(
                width: 200,
                height: 100,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              'AbsorbPointer Area',
            ),
            AbsorbPointer(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
