import 'package:flutter/material.dart';

class Week52ListView extends StatefulWidget {
  Week52ListView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week52ListViewState createState() => _Week52ListViewState();
}

class _Week52ListViewState extends State<Week52ListView> {
  final List<String> _list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'a',
    'b',
    'c',
    'd',
    'e',
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

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
              'Fixed List',
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            Text('Scrollable Dynamic List'),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: _list.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: 75,
                      margin: EdgeInsets.all(15),
                      color: Colors.amber[colorCodes[index % 2]],
                      child: Text(_list[index]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
