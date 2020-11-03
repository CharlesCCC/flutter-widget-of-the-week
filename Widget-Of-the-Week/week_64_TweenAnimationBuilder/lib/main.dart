import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo TweenAnimationBuilder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo TweenAnimationBuilder Page'),
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
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return IconButton(
              iconSize: value,
              icon: child,
              tooltip: 'Click Here',
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 48.0 ? 128.0 : 48.0;
                });
              },
            );
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}
