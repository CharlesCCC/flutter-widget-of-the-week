import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo CupertinoActionSheet',
      home: MyHomePage(title: 'Flutter Demo CupertinoActionSheet Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Click the FBA to show the ActionSheet! '),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showCupertinoModalPopup(
            context: context,
            builder: (context) => CupertinoActionSheet(
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
