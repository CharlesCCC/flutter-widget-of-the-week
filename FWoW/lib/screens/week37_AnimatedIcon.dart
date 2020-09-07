import 'package:flutter/material.dart';

class Week37AnimatedIcon extends StatefulWidget {
  Week37AnimatedIcon({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week37AnimatedIconState createState() => _Week37AnimatedIconState();
}

class _Week37AnimatedIconState extends State<Week37AnimatedIcon>
    with SingleTickerProviderStateMixin {
  int _counter = 0;
  AnimationController _controller;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _counter % 2 == 1 ? _controller.forward() : _controller.reverse();
    });
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    super.initState();
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
              'Pushed the button to see animation -- odd pause, Even play',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            AnimatedIcon(
              icon: AnimatedIcons.play_pause,
              size: 250.0,
              progress: _controller,
            )
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
