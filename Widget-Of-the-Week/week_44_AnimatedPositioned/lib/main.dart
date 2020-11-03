import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo AnimatedPositioned',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo AnimatedPositioned Page'),
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
  bool showMessage = false;

  void _toggle() {
    setState(() {
      showMessage = !showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 400,
              right: 80,
              child: Text(
                'Peek-A-Boo',
              ),
            ),
            AnimatedPositioned(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.blue,
                child: Text('Toggle the Floading action to see the secret'),
              ),
              duration: Duration(milliseconds: 500),
              bottom: showMessage ? 450 : 400,
              right: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Toggle',
        child: Icon(Icons.switch_camera),
      ),
    );
  }
}
