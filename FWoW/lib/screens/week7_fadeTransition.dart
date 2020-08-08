import 'package:flutter/material.dart';

class Week7FadeTransition extends StatefulWidget {
  Week7FadeTransition({Key key}) : super(key: key);

  @override
  _Week7FadeTransitionState createState() => _Week7FadeTransitionState();
}

class _Week7FadeTransitionState extends State<Week7FadeTransition>
    with TickerProviderStateMixin {
  int _counter = 0;

  AnimationController _controller;
  Animation<double> _animation;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _counter % 2 == 0 ? _controller.reverse() : _controller.forward();
    });
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week 7 FadeTransition'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times :',
            ),
            FadeTransition(
              opacity: _animation,
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Text(
              'Even number will faded away ',
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
