import 'package:flutter/material.dart';

class Week6FutureBuilder extends StatefulWidget {
  @override
  _Week6FutureBuilderState createState() => _Week6FutureBuilderState();
}

class _Week6FutureBuilderState extends State<Week6FutureBuilder> {
  Future<int> _getFuture = Future<int>.delayed(
    Duration(seconds: 2),
    () => 100,
  );

  Future<String> _calculation = Future<String>.delayed(
    Duration(seconds: 2),
    () => 'Data Loaded',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Week6 FutureBuilder'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Test FutureBuilder ',
            ),
            FutureBuilder(
              future: _getFuture,
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                Widget child;
                if (snapshot.hasData) {
                  child = Text('Value: ${snapshot.data}');
                } else if (snapshot.hasError) {
                  child = Text('Value: Error');
                } else {
                  child = Text('Value: Waiting...');
                }
                return child;
              },
            ),
            DefaultTextStyle(
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
              child: FutureBuilder<String>(
                future:
                    _calculation, // a previously-obtained Future<String> or null
                builder:
                    (BuildContext context, AsyncSnapshot<String> snapshot) {
                  List<Widget> children;
                  if (snapshot.hasData) {
                    children = <Widget>[
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.green,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Result: ${snapshot.data}'),
                      )
                    ];
                  } else if (snapshot.hasError) {
                    children = <Widget>[
                      Icon(
                        Icons.error_outline,
                        color: Colors.red,
                        size: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Text('Error: ${snapshot.error}'),
                      )
                    ];
                  } else {
                    children = <Widget>[
                      SizedBox(
                        child: CircularProgressIndicator(),
                        width: 60,
                        height: 60,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text('Awaiting result...'),
                      )
                    ];
                  }
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: children,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
