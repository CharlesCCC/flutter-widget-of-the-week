import 'package:flutter/material.dart';

class Week64TweenAnimationBuilder extends StatefulWidget {
  Week64TweenAnimationBuilder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week64TweenAnimationBuilderState createState() =>
      _Week64TweenAnimationBuilderState();
}

class _Week64TweenAnimationBuilderState
    extends State<Week64TweenAnimationBuilder> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return IconButton(
              iconSize: value,
              icon: child,
              tooltip: 'Click Here',
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 48.0 ? 128.0 : 48.0;
                });
              },
            );
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
