# week_38_AspectRatio

A new Flutter project.

## Getting Started

- The AspectRatio widget can be used to adjust the aspect ratio of widgets in your app. Use it to keep the ratio of your widget’s width and height consistent when changing dimensions.
- Official Youtube Tutorial: https://youtu.be/XcnP3_mO_Ms
- Official Doc: https://api.flutter.dev/flutter/widgets/AspectRatio-class.html



```dart
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '3/2 Ratio',
            ),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                color: Colors.red,
                width: 5,
                height: 5,
              ),
            )
          ],
        ),
      ),
```

