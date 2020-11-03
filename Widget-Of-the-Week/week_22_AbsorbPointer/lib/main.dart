import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo AbsorbPointer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo AbsorbPointer Page'),
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
  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
              'Touchable Area - DoubleTap',
            ),
            GestureDetector(
              onDoubleTap: () {
                print("Double Tapped");
              },
              child: Container(
                width: 200,
                height: 100,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Text(
              'AbsorbPointer Area',
            ),
            AbsorbPointer(
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.red,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("Tapped");
                    },
                    child: Container(
                      width: 200,
                      height: 100,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
