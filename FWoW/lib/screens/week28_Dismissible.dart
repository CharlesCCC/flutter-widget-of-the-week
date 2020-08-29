import 'package:flutter/material.dart';

class Week28Dismissible extends StatefulWidget {
  Week28Dismissible({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week28DismissibleState createState() => _Week28DismissibleState();
}

class _Week28DismissibleState extends State<Week28Dismissible> {
  final _listText = ["hello", "World", "Flutter", "Dimissible", "Drag-Text"];

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
