import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo Dismissible',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Dismissible Page'),
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
  final _listText = ["hello", "World", "Flutter","Dimissible","Drag-Text"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: _listText.length,
        itemBuilder: (ctx, i) => Center(
          widthFactor: 200,
          child: Dismissible(
            key: UniqueKey(),
            background: Container(
              color: Theme.of(context).errorColor,
            ),
            secondaryBackground: Container(
              color: Theme.of(context).hintColor,
            ),
            child: Container(
              height: 100,
              child: Text(
                _listText[i],
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
