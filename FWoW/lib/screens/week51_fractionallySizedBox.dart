import 'package:flutter/material.dart';

class Week51FractionallySizedBox extends StatelessWidget {
  final String title;

  const Week51FractionallySizedBox({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SizedBox Below:',
            ),
            SizedBox(
              height: 50,
              child: Container(
                color: Colors.red,
              ),
            ),
            Text(
              'FractionallySizedBox Below 70% :',
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
                widthFactor: 0.7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
