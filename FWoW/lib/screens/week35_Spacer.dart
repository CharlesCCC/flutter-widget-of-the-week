import 'package:flutter/material.dart';

class Week35Spacer extends StatelessWidget {
  Week35Spacer({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Text('Begin'),
              color: Colors.red,
              width: 50,
              height: 100,
            ),
            Spacer(), // Defaults to a flex of one.
            Container(
              child: Text('Middle'),
              color: Colors.green,
              width: 50,
              height: 100,
            ),
            // Gives twice the space between Middle and End than Begin and Middle.
            Spacer(flex: 2),
            Container(
              child: Text('End'),
              color: Colors.blue,
              width: 50,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
