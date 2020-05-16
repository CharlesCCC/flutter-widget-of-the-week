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
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool _visible = false;

  void _toggleVisible() {
    setState(() {
      _visible = !_visible;
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
              child: CustomPaint(
                size: Size(150, 150),
                painter: MyPainter(),
              ),
              color: Color.fromRGBO(255, 0, 0, 0.2), //opacity with Color
            ),
            SizedBox(
              height: 15,
            ),
            AnimatedOpacity(
              opacity: _visible ? 1.0 : 0.0,
              duration: Duration(seconds: 2),
              child: const Text("Now you see me, now you don't!"),
            ),
            Text("With 0.5 Opacity"),
            Opacity(
              opacity: 0.5,
              child: CustomPaint(
                size: Size(150, 150),
                painter: MyPainter(),
              ),
            ),
            Text("With 0.2 Opacity"),
            Opacity(
              opacity: 0.2,
              child: Container(
                child: CustomPaint(
                  size: Size(150, 150),
                  painter: MyPainter(),
                ),
                color: Color.fromRGBO(255, 0, 0, 0.4),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggleVisible,
        child: Text("Magic"),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.deepOrange;

    canvas.drawRRect(RRect.fromLTRBAndCorners(0.0, 0.0, 100.0, 100.0), paint);
  }

  @override
  bool shouldRepaint(CustomPainter old) {
    return false;
  }
}
