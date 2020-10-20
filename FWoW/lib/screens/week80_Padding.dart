import 'package:flutter/material.dart';

class Week80Padding extends StatelessWidget {
  final String title;
  const Week80Padding({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlexContainer(color: Colors.yellow, padding: 5.0),
            Flexible(
              child: Row(
                children: <Widget>[
                  FlexContainer(color: Colors.green, padding: 10.0),
                  FlexContainer(color: Colors.blue, padding: 15.0),
                  FlexContainer(color: Colors.green, padding: 20.0),
                ],
              ),
            ),
            FlexContainer(color: Colors.red, padding: 5.0),
          ],
        ),
      ),
    );
  }
}

class FlexContainer extends StatelessWidget {
  final color;
  final double padding;

  const FlexContainer({Key key, this.color, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          color: color,
          child: Center(
            child: Text('Padding $padding'),
          ),
        ),
      ),
    );
  }
}
