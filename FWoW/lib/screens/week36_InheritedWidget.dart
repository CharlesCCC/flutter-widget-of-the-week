import 'package:flutter/material.dart';

class Week36InheritedWidget extends StatefulWidget {
  Week36InheritedWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week36InheritedWidgetState createState() => _Week36InheritedWidgetState();
}

class _Week36InheritedWidgetState extends State<Week36InheritedWidget> {
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
