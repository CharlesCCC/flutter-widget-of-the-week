import 'package:flutter/material.dart';

class Week10Table extends StatefulWidget {
  Week10Table({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week10TableState createState() => _Week10TableState();
}

class _Week10TableState extends State<Week10Table> {
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
        child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          defaultColumnWidth: IntrinsicColumnWidth(),
          border: TableBorder.all(
            color: Colors.black,
            width: 1.0,
          ),
          children: [
            TableRow(children: [
              SizedBox(
                height: 20.0,
                child: Text(
                  'Table Text',
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
                child: Text('Count'),
              ),
            ]),
            TableRow(
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
            TableRow(
              children: <Widget>[
                Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
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
