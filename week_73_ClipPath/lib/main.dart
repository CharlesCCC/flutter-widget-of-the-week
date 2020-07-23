import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ClipPath',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo ClipPath Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ClipPath(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          clipper: MyCustomClipper(),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  static const POLY_POINTS = 15;

  @override
  Path getClip(Size size) {
    var path = Path();
    var rand = Random();

    path.addPolygon(
        List.generate(
          POLY_POINTS,
          (index) => Offset(
              rand.nextDouble() * size.width, rand.nextDouble() * size.height),
        ),
        true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
