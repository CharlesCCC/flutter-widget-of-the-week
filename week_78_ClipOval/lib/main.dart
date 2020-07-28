import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ClipOval',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
              headline4: TextStyle(
            fontSize: 60,
            color: Colors.white,
          ))),
      home: MyHomePage(title: 'Flutter Demo ClipOval Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
