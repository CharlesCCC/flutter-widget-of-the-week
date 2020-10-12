import 'package:flutter/material.dart';

class Week72Builder extends StatelessWidget {
  final String title;
  const Week72Builder({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Builder(
          builder: (context) => RaisedButton(
            child: Text('Click me'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Test Builder Widget!'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
