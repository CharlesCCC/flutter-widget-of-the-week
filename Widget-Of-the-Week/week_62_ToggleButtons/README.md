# week_62_ToggleButtons

A new Flutter project.

## Getting Started

- Do you want to let your users select from a number of related options? Adding ToggleButtons to your app can help!  
- Official Youtube Tutorial: https://youtu.be/kVEguaQWGAY
- Official Doc: https://api.flutter.dev/flutter/material/ToggleButtons-class.html

```dart
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
```

