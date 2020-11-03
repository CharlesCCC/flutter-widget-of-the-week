import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo DataTable',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo DataTable Page'),
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
  List<bool> isSelected = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text('ToggleButtons#1: Combo '),
          Center(
            child: ToggleButtons(
              children: <Widget>[
                Icon(Icons.ac_unit),
                Icon(Icons.call),
                Icon(Icons.cake),
              ],
              onPressed: (int index) {
                setState(() {
                  print(isSelected.length);
                  isSelected[index] = !isSelected[index];
                });
              },
              isSelected: isSelected,
            ),
          ),
          Text('ToggleButtons#1: Mutual Exclusive '),
          ToggleButtons(
            children: <Widget>[
              Icon(Icons.ac_unit),
              Icon(Icons.call),
              Icon(Icons.cake),
            ],
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                    buttonIndex < isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    isSelected[buttonIndex] = true;
                  } else {
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
          ),
          Text('ToggleButtons#3: Mutual Exclusive with Null Allowed '),
          ToggleButtons(
            children: <Widget>[
              Icon(Icons.ac_unit),
              Icon(Icons.call),
              Icon(Icons.cake),
            ],
            onPressed: (int index) {
              setState(() {
                for (int buttonIndex = 0;
                    buttonIndex < isSelected.length;
                    buttonIndex++) {
                  if (buttonIndex == index) {
                    isSelected[buttonIndex] = !isSelected[buttonIndex];
                  } else {
                    isSelected[buttonIndex] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
          ),
        ],
      ),
    );
  }
}
