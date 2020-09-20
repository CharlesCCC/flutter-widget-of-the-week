import 'package:flutter/material.dart';

class Week50AnimatedOpacity extends StatefulWidget {
  Week50AnimatedOpacity({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week50AnimatedOpacityState createState() => _Week50AnimatedOpacityState();
}

class _Week50AnimatedOpacityState extends State<Week50AnimatedOpacity> {
  int _counter = 0;
  double _opacity = 1.0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _counter % 2 == 0 ? _opacity = 1 : _opacity = 0;
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
            AnimatedOpacity(
              duration: Duration(milliseconds: 350),
              opacity: _opacity,
              child: Text(
                'You have pushed the button this many times: (push to see animation) ',
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
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
