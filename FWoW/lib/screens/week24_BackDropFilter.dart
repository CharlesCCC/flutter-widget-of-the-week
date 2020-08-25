import 'dart:ui';

import 'package:flutter/material.dart';

class Week24BackdropFilter extends StatefulWidget {
  Week24BackdropFilter({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week24BackdropFilterState createState() => _Week24BackdropFilterState();
}

class _Week24BackdropFilterState extends State<Week24BackdropFilter> {
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Image.network(
                'https://image.shutterstock.com/image-vector/awesome-stamp-260nw-423392413.jpg'),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Text(
                  "This BackdropFilter Child will not affected ! Only anything beneth it"),
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
