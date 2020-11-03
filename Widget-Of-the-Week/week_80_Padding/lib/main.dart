import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Padding',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Padding Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
