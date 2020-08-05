import 'dart:math';

import 'package:flutter/material.dart';

class Week4AnimatedContainer extends StatefulWidget {
  @override
  _Week4AnimatedContainerState createState() => _Week4AnimatedContainerState();
}

class _Week4AnimatedContainerState extends State<Week4AnimatedContainer> {
  bool selected = false;
  var rnd = new Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Tap the logo to see animation:',
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Center(
                child: AnimatedContainer(
                  width: selected ? 200.0 : rnd.nextDouble() * 100,
                  height: selected ? 100.0 : rnd.nextDouble() * 200,
                  color: selected ? Colors.red : Colors.blue,
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: FlutterLogo(size: 75),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
