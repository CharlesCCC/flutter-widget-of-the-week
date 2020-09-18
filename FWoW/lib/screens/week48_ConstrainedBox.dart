import 'package:flutter/material.dart';

class Week48ConstrainedBox extends StatelessWidget {
  Week48ConstrainedBox({Key key, this.title}) : super(key: key);

  final String title;

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
              'This is a nomrla Text without any constraint ',
            ),
            SizedBox(
              height: 25,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 55),
              child: Text(
                'This is a nomrla Text with 55 width constraint ',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
