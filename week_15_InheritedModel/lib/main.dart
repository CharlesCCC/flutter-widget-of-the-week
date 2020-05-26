import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter InheritedModel/Widget Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo InheritedModel/Widget'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            FrogColor(
              child: const MyWidget(),
              color: Colors.amber,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget();

  Widget build(BuildContext context) {
    // somewhere down the line
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
        child: Text('color is from Inherited Widget'),
      ),
      color: frogColor.color,
    );
  }
}

class FrogColor extends InheritedWidget {
  const FrogColor({
    Key key,
    @required this.color,
    @required Widget child,
  })  : assert(color != null),
        assert(child != null),
        super(key: key, child: child);

  final Color color;

  static FrogColor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}
