import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:
          'Flutter Demo CircularProgressIndicator and LinearProgressIndicator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
          title:
              'Flutter CircularProgressIndicator and LinearProgressIndicator Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> _colorTween;

  void initState() {
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1800),
      vsync: this,
    );

    _colorTween = _animationController.drive(
      ColorTween(
        begin: Colors.red,
        end: Colors.blue,
      ),
    );

    _animationController.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: CircularProgressIndicator(valueColor: _colorTween),
            ),
            Padding(
              padding: const EdgeInsets.all(42.0),
              child: LinearProgressIndicator(valueColor: _colorTween),
            ),
          ],
        ),
      ),
    );
  }
}
