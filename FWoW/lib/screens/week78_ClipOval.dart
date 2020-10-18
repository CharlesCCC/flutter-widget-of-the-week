import 'dart:math';

import 'package:flutter/material.dart';

class Week78ClipOval extends StatefulWidget {
  Week78ClipOval({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week78ClipOvalState createState() => _Week78ClipOvalState();
}

class _Week78ClipOvalState extends State<Week78ClipOval> {
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
            SizedBox(height: 30),
            TweenAnimationBuilder(
              tween: _counter.isEven
                  ? Tween<double>(begin: 0, end: 1)
                  : Tween<double>(begin: 1, end: 0),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              builder: (context, size, child) {
                return ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: MyCircleClipper(size),
                  child: Transform.scale(
                    scale: 3 - size,
                    child: child,
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink[200], Colors.blue[200]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 200,
                child: Center(
                  child: Text(
                    '${_counter ~/ 2}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
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

class MyCircleClipper extends CustomClipper<Rect> {
  final double radius;

  MyCircleClipper(this.radius);

  @override
  Rect getClip(Size size) {
    var smaller = min(size.width, size.height);
    return Rect.fromCenter(
      center: size.center(Offset.zero),
      width: smaller * radius,
      height: smaller * radius,
    );
  }

  @override
  bool shouldReclip(MyCircleClipper oldClipper) {
    return radius != oldClipper.radius;
  }
}
