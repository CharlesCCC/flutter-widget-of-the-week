import 'package:flutter/material.dart';

class Week59AnimatedCrossFade extends StatefulWidget {
  Week59AnimatedCrossFade({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week59AnimatedCrossFadeState createState() =>
      _Week59AnimatedCrossFadeState();
}

class _Week59AnimatedCrossFadeState extends State<Week59AnimatedCrossFade> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 200.0),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 200.0),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text('Toggle'),
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
