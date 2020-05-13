import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Expanded Examples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100,
                alignment: AlignmentDirectional.center,
                child: Text("Column Expanded"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    alignment: AlignmentDirectional.center,
                    child: Text("Row Expanded with flex 1"),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    alignment: AlignmentDirectional.center,
                    child: Text("Row Expanded with flex 5"),
                  ),
                ),
              ],
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
