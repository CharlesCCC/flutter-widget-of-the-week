import 'package:flutter/material.dart';

class Week55SelectableText extends StatelessWidget {
  Week55SelectableText({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              'You can select the text here by press',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              showCursor: true,
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
              ),
              cursorWidth: 10,
              cursorColor: Colors.amber,
              cursorRadius: Radius.circular(10),
            ),
          ],
        ),
      ),
    );
  }
}
