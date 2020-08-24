import 'dart:math';

import 'package:flutter/material.dart';

class Week23Transform extends StatefulWidget {
  Week23Transform({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week23TransformState createState() => _Week23TransformState();
}

class _Week23TransformState extends State<Week23Transform> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
            Transform.rotate(
              angle: pi / 4,
              child: Text(
                'You have pushed the button this many times: (with 45 dgree rotation)',
              ),
            ),
            Transform.scale(
              scale: 5,
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
