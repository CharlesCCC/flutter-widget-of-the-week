import 'package:flutter/material.dart';

class Week8FloatingActionButton extends StatefulWidget {
  @override
  _Week8FloatingActionButtonState createState() =>
      _Week8FloatingActionButtonState();
}

class _Week8FloatingActionButtonState extends State<Week8FloatingActionButton> {
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
        title: Text('Week 8 FloatingActionButton'),
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
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          title: Title(color: Colors.red, child: Text('A')),
          icon: Icon(
            Icons.access_alarm,
          ),
        ),
        BottomNavigationBarItem(
          title: Title(color: Colors.red, child: Text('B')),
          icon: Icon(
            Icons.access_alarm,
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
