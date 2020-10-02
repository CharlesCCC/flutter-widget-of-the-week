import 'package:flutter/material.dart';

class Wweek62ToggleButtons extends StatefulWidget {
  Wweek62ToggleButtons({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Wweek62ToggleButtonsState createState() => _Wweek62ToggleButtonsState();
}

class _Wweek62ToggleButtonsState extends State<Wweek62ToggleButtons> {
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
