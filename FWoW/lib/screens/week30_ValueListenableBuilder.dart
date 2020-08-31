import 'package:flutter/material.dart';

class Week30ValueListenableBuilder extends StatefulWidget {
  Week30ValueListenableBuilder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week30ValueListenableBuilderState createState() =>
      _Week30ValueListenableBuilderState();
}

class _Week30ValueListenableBuilderState
    extends State<Week30ValueListenableBuilder> {
  ValueNotifier<int> _counter = ValueNotifier<int>(0);
  final Widget goodJob = const Text('You did it !!!');

  void _incrementCounter() {
    setState(() {
      _counter.value++; //notice here is .value
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
              'You have pushed the button this many times:',
            ),
            ValueListenableBuilder(
              builder: (ctx, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '$value',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    child,
                  ],
                );
              },
              valueListenable: _counter,
              child: goodJob,
            ),
            Text(
              'Value listenable: ${_counter.value}',
              //style: Theme.of(context).textTheme.headline4,
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
