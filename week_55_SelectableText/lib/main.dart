import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo SeletableText',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo SeletableText Page'),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              'You can select the text here ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              showCursor: true,
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
              ),
              cursorWidth: 10,
              cursorColor: Colors.amber,
              cursorRadius: Radius.circular(10),
            ),
          ],
        ),
      ),
    );
  }
}
