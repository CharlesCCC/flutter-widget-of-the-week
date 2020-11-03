import 'package:flutter/material.dart';
import 'package:week_15_InheritedModel/inheritedModel.dart';

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

  int firstTick, secondTick, thirdTick;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    firstTick = secondTick = thirdTick = 0;
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
            FrogColor(
              child: const MyWidget(),
              color: Colors.amber,
            ),
            NumberManagerWidget(
              child: AsInheritedModel(),
            ),
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

class FrogColor extends InheritedWidget {
  const FrogColor({
    Key key,
    @required this.color,
    @required Widget child,
  })  : assert(color != null),
        assert(child != null),
        super(key: key, child: child);

  final Color color; //noticed it final here

  static FrogColor of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FrogColor>();
  }

  @override
  bool updateShouldNotify(FrogColor old) => color != old.color;
}

class AsInheritedModel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NumberModel model =
        NumberModel.of(context, aspect: NUMBER_TYPE.FIRST);
    return Text(
        "Values: ${model.firstValue}, ${model.secondValue}, ${model.thirdValue}");
  }
}

class AsInheritedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final NumberModel model = NumberModel.of(context);
    return Text(
        "Values: ${model.firstValue}, ${model.secondValue}, ${model.thirdValue}");
  }
}
