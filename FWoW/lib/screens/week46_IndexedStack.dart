import 'package:flutter/material.dart';

class Week46IndexedStack extends StatefulWidget {
  Week46IndexedStack({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week46IndexedStackState createState() => _Week46IndexedStackState();
}

class _Week46IndexedStackState extends State<Week46IndexedStack> {
  int _counter = 0;
  int _widgetIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _widgetIndex = _counter % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IndexedStack(
          index: _widgetIndex,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
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
