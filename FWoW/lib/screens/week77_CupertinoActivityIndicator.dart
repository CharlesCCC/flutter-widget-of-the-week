import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week77CupertinoActivityIndicator extends StatefulWidget {
  final String title;

  const Week77CupertinoActivityIndicator({Key key, this.title})
      : super(key: key);

  @override
  _Week77CupertinoActivityIndicatorState createState() =>
      _Week77CupertinoActivityIndicatorState();
}

class _Week77CupertinoActivityIndicatorState
    extends State<Week77CupertinoActivityIndicator> {
  Future<String> getTestString() async {
    return Future<String>.delayed(
      Duration(seconds: 3),
      () => 'Data Loaded',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: getTestString(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return Text(snapshot.data);
          },
        ),
      ),
    );
  }
}
