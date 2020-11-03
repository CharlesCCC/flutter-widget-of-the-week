import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo IgnorePointer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo IgnorePointer Page'),
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
            InkWell(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Tabable')),
              ),
              onTap: () {
                print('Tabed');
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            IgnorePointer(
              child: InkWell(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.amber,
                  child: Center(child: Text('Not Tabable')),
                ),
                onTap: () {
                  print('Tabed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
