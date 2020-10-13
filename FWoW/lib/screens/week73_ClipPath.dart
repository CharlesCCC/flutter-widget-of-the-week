import 'dart:math';

import 'package:flutter/material.dart';

class Week73ClipPath extends StatefulWidget {
  Week73ClipPath({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week73ClipPathState createState() => _Week73ClipPathState();
}

class _Week73ClipPathState extends State<Week73ClipPath> {
  var _clipper = MyCustomClipper();

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
          clipper: _clipper,
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
            rand.nextDouble() * size.width,
            rand.nextDouble() * size.height,
          ),
        ),
        true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
