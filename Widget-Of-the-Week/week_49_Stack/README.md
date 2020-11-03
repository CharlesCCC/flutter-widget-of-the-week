# week_49_Stack

A new Flutter project.

## Getting Started

- If you've ever wanted overlapping elements, then Stack is the widget for you! Stack allows you to overlay multiple widgets on top of each other. For example, you can use a Stack to add text over an image.
- Official Youtube Tutorial: https://youtu.be/liEGSeD3Zt8
- Official Doc: https://api.flutter.dev/flutter/widgets/Stack-class.html

```dart
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.green,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.blue,
            ),
          ],
        ),
      ),
```

