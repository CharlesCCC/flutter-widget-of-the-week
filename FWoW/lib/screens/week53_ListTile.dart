import 'package:flutter/material.dart';

class Week53ListTile extends StatefulWidget {
  Week53ListTile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week53ListTileState createState() => _Week53ListTileState();
}

class _Week53ListTileState extends State<Week53ListTile> {
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
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Main Title '),
              subtitle: Text('Sub Title'),
              trailing: Icon(Icons.close),
              onTap: () => {print('tap')},
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Second Title '),
              subtitle: Text('Sub Title'),
              trailing: Icon(Icons.close),
              onTap: () => {print('tap')},
            )
          ],
        ),
      ),
    );
  }
}
