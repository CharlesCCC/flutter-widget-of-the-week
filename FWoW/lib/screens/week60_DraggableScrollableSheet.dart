import 'package:flutter/material.dart';

class Week60DraggableScrollableSheet extends StatefulWidget {
  Week60DraggableScrollableSheet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week60DraggableScrollableSheetState createState() =>
      _Week60DraggableScrollableSheetState();
}

class _Week60DraggableScrollableSheetState
    extends State<Week60DraggableScrollableSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
