import 'package:flutter/material.dart';

class Week29SizedBox extends StatefulWidget {
  Week29SizedBox({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week29SizedBoxState createState() => _Week29SizedBoxState();
}

class _Week29SizedBoxState extends State<Week29SizedBox> {
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
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Container(
                color: Colors.amber,
                child: Text('Here is the sized Box'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                child: Text('Here is the Expanded'),
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
