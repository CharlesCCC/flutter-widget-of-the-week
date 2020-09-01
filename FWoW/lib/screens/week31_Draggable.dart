import 'package:flutter/material.dart';

class Week31Draggable extends StatefulWidget {
  Week31Draggable({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week31DraggableState createState() => _Week31DraggableState();
}

class _Week31DraggableState extends State<Week31Draggable> {
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
              'Dragglable Demo Is here ',
            ),
            Draggable<Color>(
              child: Container(
                width: 50,
                height: 50,
                color: Colors.black54,
              ),
              childWhenDragging: Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              feedback: Container(
                width: 50,
                height: 50,
                color: Colors.grey,
              ),
              data: Colors.black,
            ),
            SizedBox(
              height: 200,
            ),
            Text('Target is below'),
            DragTarget<Color>(
              builder: (context, candiates, rejects) {
                return candiates.length > 0
                    ? Container(
                        width: 100,
                        height: 100,
                        color: candiates[0],
                      )
                    : Container(
                        width: 100,
                        height: 100,
                        color: Colors.grey,
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
