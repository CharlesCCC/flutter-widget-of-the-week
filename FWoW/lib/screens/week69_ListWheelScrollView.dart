import 'package:flutter/material.dart';

class Week69ListWheelScrollView extends StatefulWidget {
  Week69ListWheelScrollView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week69ListWheelScrollViewState createState() =>
      _Week69ListWheelScrollViewState();
}

class _Week69ListWheelScrollViewState extends State<Week69ListWheelScrollView> {
  List<Widget> _list = List.generate(
    48,
    (index) => Card(
      child: ListTile(
        title: Text('Card # $index'),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListWheelScrollView(
        itemExtent: 175.0,
        children: _list,
        // useMagnifier: true,
        // magnification: 1.0,
        perspective: 0.002,
        physics: FixedExtentScrollPhysics(),
      ),
    );
  }
}
