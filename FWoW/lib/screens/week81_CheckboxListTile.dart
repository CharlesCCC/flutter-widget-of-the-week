import 'package:flutter/material.dart';

class Week81CheckboxListTile extends StatefulWidget {
  final String title;
  const Week81CheckboxListTile({Key key, this.title}) : super(key: key);

  @override
  _Week81CheckboxListTileState createState() => _Week81CheckboxListTileState();
}

class _Week81CheckboxListTileState extends State<Week81CheckboxListTile> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => CheckboxListTile(
            value: _checked,
            title: Text('Title $index'),
            secondary: Text('Secondary'),
            subtitle: Text('SubTitle'),
            onChanged: (value) {
              setState(() {
                _checked = value;
              });
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
