import 'package:flutter/material.dart';

class Week21LayOutBuilder extends StatefulWidget {
  Week21LayOutBuilder({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week21LayOutBuilderState createState() => _Week21LayOutBuilderState();
}

class _Week21LayOutBuilderState extends State<Week21LayOutBuilder> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Widget _buildSmallScreen(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have a small screen',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 320) {
              return _buildSmallScreen(context);
            } else {
              return Text(
                'You have a large screen',
                style: Theme.of(context).textTheme.headline2,
              );
            }
          },
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
