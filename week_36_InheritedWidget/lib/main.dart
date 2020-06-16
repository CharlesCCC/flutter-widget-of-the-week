import 'package:flutter/material.dart';
import 'package:week_36_InheritedWidget/inheritedModel.dart';
import 'package:week_36_InheritedWidget/inheritedWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo InheritedWidget'),
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
            FrogColor(
              child: const MyWidget(),
              color: Colors.red, //Note here is red passed to MyOtherWidget()
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget();

  Widget build(BuildContext context) {
    return const MyOtherWidget();
  }
}

class MyOtherWidget extends StatelessWidget {
  const MyOtherWidget();

  Widget build(BuildContext context) {
    final frogColor = FrogColor.of(context);

    return Container(
      width: 200,
      height: 100,
      child: Center(
        child: Text('color propertie is from Inherited Widget FrogColor'),
      ),
      color: frogColor.color, 
    );
  }
}
