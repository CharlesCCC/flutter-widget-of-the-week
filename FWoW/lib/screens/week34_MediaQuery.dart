import 'package:flutter/material.dart';

class Week34MediaQuery extends StatefulWidget {
  Week34MediaQuery({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week34MediaQueryState createState() => _Week34MediaQueryState();
}

class _Week34MediaQueryState extends State<Week34MediaQuery> {
  @override
  Widget build(BuildContext context) {
    var deviceData = MediaQuery.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You device orientation: ${deviceData.orientation}',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You device text Scale: ${deviceData.textScaleFactor}',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You device size: ${deviceData.size}',
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
