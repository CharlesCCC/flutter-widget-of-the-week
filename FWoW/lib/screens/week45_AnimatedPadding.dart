import 'package:flutter/material.dart';

class Week45AnimatedPadding extends StatefulWidget {
  Week45AnimatedPadding({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week45AnimatedPaddingState createState() => _Week45AnimatedPaddingState();
}

class _Week45AnimatedPaddingState extends State<Week45AnimatedPadding> {
  double _counter = 0.0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 10;
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
              'Push the floating action to increase padding by 10 :',
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(_counter),
              duration: const Duration(microseconds: 350),
              curve: Curves.easeInOut,
              child: Container(
                color: Colors.blue,
                height: 50,
                child: Center(
                  child: Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
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
