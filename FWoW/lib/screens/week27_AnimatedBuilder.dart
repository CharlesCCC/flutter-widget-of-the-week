import 'dart:math';

import 'package:flutter/material.dart';

class Week27AnimatedBuilder extends StatefulWidget {
  Week27AnimatedBuilder({Key key}) : super(key: key);

  @override
  _Week27AnimatedBuilderState createState() => _Week27AnimatedBuilderState();
}

class _Week27AnimatedBuilderState extends State<Week27AnimatedBuilder>
    with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, Widget child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * pi,
          child: child, //Is the container below
        );
      },
      child: Container(
        width: 200.0,
        height: 200.0,
        color: Colors.blue,
        child: const Center(
          child: Text(
            '!WoW!',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
