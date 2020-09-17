import 'package:flutter/material.dart';

class Week47Semantics extends StatefulWidget {
  Week47Semantics({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week47SemanticsState createState() => _Week47SemanticsState();
}

class _Week47SemanticsState extends State<Week47Semantics> {
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
            Semantics(
              label: 'Counter Text',
              hint: 'Counter Text',
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
