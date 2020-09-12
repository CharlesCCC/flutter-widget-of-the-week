import 'dart:math';

import 'package:flutter/material.dart';

class Week42ReorderableListView extends StatefulWidget {
  Week42ReorderableListView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week42ReorderableListViewState createState() =>
      _Week42ReorderableListViewState();
}

class _Week42ReorderableListViewState extends State<Week42ReorderableListView> {
  int _counter = 0;
  List<int> _items = [100, 200, 300];
  final random = Random(250);

  void _incrementCounter() {
    setState(() {
      _counter++;
      _items.add(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ReorderableListView(
        children: [
          for (final item in _items)
            Container(
              key: UniqueKey(),
              color: Color.fromARGB(
                random.nextInt(250),
                random.nextInt(250),
                random.nextInt(250),
                random.nextInt(250),
              ),
              child: ListTile(
                title: Text('Item: #$item'),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            int temp = _items[oldIndex];
            _items[oldIndex] = _items[newIndex];
            _items[newIndex] = temp;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Add more item',
        child: Icon(Icons.add),
      ),
    );
  }
}
