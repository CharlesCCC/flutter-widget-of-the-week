import 'package:flutter/material.dart';

class Week76IgnorePointer extends StatelessWidget {
  final String title;
  const Week76IgnorePointer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InkWell(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Tabable InkWell')),
              ),
              onTap: () {
                print('Tabed');
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            IgnorePointer(
              child: InkWell(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Not Tabable InkWell')),
                ),
                onTap: () {
                  print('Tabed');
                },
              ),
            ),
            Text('(See Debug Console for log)'),
          ],
        ),
      ),
    );
  }
}
