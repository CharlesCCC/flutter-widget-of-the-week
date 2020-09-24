import 'package:flutter/material.dart';

class Week54Container extends StatefulWidget {
  Week54Container({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week54ContainerState createState() => _Week54ContainerState();
}

class _Week54ContainerState extends State<Week54Container> {
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
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 88.0,
              height: 88.0,
              child: Text('Yellow Container'),
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                    100.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text(
                'Hello World $_counter',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
              transform: Matrix4.rotationZ(0.3),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.red[600],
              width: 88.0,
              height: 88.0,
              child: Text('Red Container'),
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
