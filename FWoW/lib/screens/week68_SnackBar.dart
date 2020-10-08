import 'package:flutter/material.dart';

class Week68SnackBar extends StatefulWidget {
  Week68SnackBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week68SnackBarState createState() => _Week68SnackBarState();
}

class _Week68SnackBarState extends State<Week68SnackBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: FlatButton(
              child: Text('Click to Show SnackBar'),
              onPressed: () {
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text('Hello World')));
              },
            ),
          );
        },
      ),
    );
  }
}
