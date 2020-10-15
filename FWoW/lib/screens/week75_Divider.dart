import 'package:flutter/material.dart';

class Week75Divider extends StatelessWidget {
  Week75Divider({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const Center(
                  child: Text('Above'),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Below'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
