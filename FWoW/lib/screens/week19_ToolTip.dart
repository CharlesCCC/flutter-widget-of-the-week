import 'package:flutter/material.dart';

class Week19ToolTip extends StatefulWidget {
  Week19ToolTip({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week19ToolTipState createState() => _Week19ToolTipState();
}

class _Week19ToolTipState extends State<Week19ToolTip> {
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
            Tooltip(
              message: "Display Text",
              child: Text(
                'You have long push to show the tool tip:',
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Tooltip(
              message: "Container box ",
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment', //built in tooltip property
        child: Icon(Icons.add),
      ),
    );
  }
}
