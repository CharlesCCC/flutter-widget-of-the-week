# week_40_PlaceHolder

A new Flutter project.

## Getting Started

- Need something to stand in for a widget you're not finished composing? Placeholder is here to help. It's a simple widget that draws an X where your widget will ultimately go!
- Official Youtube Tutorial: https://youtu.be/LPe56fezmoo
- Official Doc: https://api.flutter.dev/flutter/widgets/Placeholder-class.html

```dart
 body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'the following is your place holder',
            ),
            Placeholder(
              fallbackHeight: 100,
              fallbackWidth: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
```

