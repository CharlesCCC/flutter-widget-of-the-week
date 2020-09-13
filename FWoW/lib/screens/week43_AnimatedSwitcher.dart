import 'package:flutter/material.dart';

class Week43AnimatedSwitcher extends StatefulWidget {
  Week43AnimatedSwitcher({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week43AnimatedSwitcherState createState() => _Week43AnimatedSwitcherState();
}

class _Week43AnimatedSwitcherState extends State<Week43AnimatedSwitcher> {
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
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: Text(
                '$_counter',
                key: ValueKey<int>(_counter),
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
