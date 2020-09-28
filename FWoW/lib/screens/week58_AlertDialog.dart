import 'package:flutter/material.dart';

class Week58AlertDialog extends StatefulWidget {
  Week58AlertDialog({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week58AlertDialogState createState() => _Week58AlertDialogState();
}

class _Week58AlertDialogState extends State<Week58AlertDialog> {
  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Nope'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Me To Show Dialog'),
          onPressed: _showMyDialog,
        ),
      ),
    );
  }
}
