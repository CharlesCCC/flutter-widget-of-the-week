# week_63_CupertinoActionSheet

A new Flutter project.

## Getting Started

- Are you building an iOS-style app that needs to present the user with a list of options for what to do next? CupertinoActionSheet is the widget for you!  
- Official Youtube Tutorial: https://youtu.be/U-ao8p4A82k
- Official Doc: https://api.flutter.dev/flutter/cupertino/CupertinoActionSheet-class.html

```dart
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

```

