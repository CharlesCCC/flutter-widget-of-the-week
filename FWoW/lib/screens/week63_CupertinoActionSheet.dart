import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week63CupertinoActionSheet extends StatefulWidget {
  Week63CupertinoActionSheet({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week63CupertinoActionSheetState createState() =>
      _Week63CupertinoActionSheetState();
}

class _Week63CupertinoActionSheetState
    extends State<Week63CupertinoActionSheet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('Click the FBA to show the ActionSheet! '),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (_) => CupertinoActionSheet(
              title: Text('Cupertino Action Sheet Test'),
              message: Text('some test message here '),
              actions: <Widget>[
                CupertinoDialogAction(child: Text('Good')),
                CupertinoDialogAction(child: Text('Bad')),
              ],
              cancelButton: CupertinoActionSheetAction(
                child: Text('Cancel'),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
