import 'package:flutter/material.dart';

class Week71NotificationListener extends StatefulWidget {
  Week71NotificationListener({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week71NotificationListenerState createState() =>
      _Week71NotificationListenerState();
}

class _Week71NotificationListenerState
    extends State<Week71NotificationListener> {
  List<Widget> _list = List.generate(
      40,
      (index) => ListTile(
            title: Text('Card $index'),
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: NotificationListener(
        onNotification: (notification) {
          print(notification);
          return true;
        },
        child: Center(
          child: ListView(
            children: _list,
            // itemExtent: 10,
          ),
        ),
      ),
    );
  }
}
