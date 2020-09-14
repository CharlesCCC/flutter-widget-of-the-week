import 'package:flutter/material.dart';

class Week44AnimatedPositioned extends StatefulWidget {
  Week44AnimatedPositioned({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week44AnimatedPositionedState createState() =>
      _Week44AnimatedPositionedState();
}

class _Week44AnimatedPositionedState extends State<Week44AnimatedPositioned> {
  bool showMessage = false;

  void _toggle() {
    setState(() {
      showMessage = !showMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 400,
              right: 80,
              child: Text(
                'Peek-A-Boo',
              ),
            ),
            AnimatedPositioned(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.blue,
                child: Text('Toggle the Floading action to see the secret'),
              ),
              duration: Duration(milliseconds: 500),
              bottom: showMessage ? 450 : 400,
              right: 80,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Toggle',
        child: Icon(Icons.switch_camera),
      ),
    );
  }
}
