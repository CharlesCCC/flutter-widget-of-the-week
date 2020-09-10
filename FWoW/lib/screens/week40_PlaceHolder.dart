import 'package:flutter/material.dart';

class Week40PlaceHolder extends StatefulWidget {
  Week40PlaceHolder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week40PlaceHolderState createState() => _Week40PlaceHolderState();
}

class _Week40PlaceHolderState extends State<Week40PlaceHolder> {
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
              'the following is your place holder',
            ),
            Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 100,
              color: Colors.amber,
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
