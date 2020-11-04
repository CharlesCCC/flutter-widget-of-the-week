import 'package:flutter/material.dart';

class Week14StreamBuilder extends StatefulWidget {
  Week14StreamBuilder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week14StreamBuilderState createState() => _Week14StreamBuilderState();
}

class _Week14StreamBuilderState extends State<Week14StreamBuilder> {
  int _counter = 0;

  //StreamController<int> stc = StreamController<int>();

  Stream<int> _getCounterStream() async* {
    for (int i = 0; i < 50; i++) {
      _counter += 1;
      await Future.delayed(Duration(seconds: 1));
      yield _counter;
    }
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    //stc.close();
    super.dispose();
  }

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
            StreamBuilder(
              stream: _getCounterStream(),
              builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
                List<Widget> children;
                if (snapshot.hasError) {
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
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      children = <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.blue,
                          size: 60,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text('Select a lot'),
                        )
                      ];
                      break;
                    case ConnectionState.waiting:
                      children = <Widget>[
                        SizedBox(
                          child: const CircularProgressIndicator(),
                          width: 60,
                          height: 60,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Text('Awaiting bids...'),
                        )
                      ];
                      break;
                    case ConnectionState.active:
                      children = <Widget>[
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('\$ ${snapshot.data}'),
                        )
                      ];
                      break;
                    case ConnectionState.done:
                      children = <Widget>[
                        Icon(
                          Icons.info,
                          color: Colors.blue,
                          size: 60,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Text('\$${snapshot.data} (closed)'),
                        )
                      ];
                      break;
                  }
                }

                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: children,
                );
              },
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
