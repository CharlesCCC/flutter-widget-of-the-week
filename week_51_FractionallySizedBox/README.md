# week51_FractionallySizedBox

A new Flutter project.

## Getting Started

- FractionallySizedBox allows you to size the child to a fraction of the total available space. 
- Official Youtube Tutorial: https://youtu.be/PEsY654EGZ0
- Official Doc: https://api.flutter.dev/flutter/widgets/FractionallySizedBox-class.html

```dart
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SizedBox Below:',
            ),
            SizedBox(
              height: 50,
              child: Container(
                color: Colors.red,
              ),
            ),
            Text(
              'FractionallySizedBox Below 70% :',
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
                widthFactor: 0.7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
```

