# week_48_ConstrainedBox

A new Flutter project.

## Getting Started

- Flutter's ConstrainedBox widget is great to add requirements for a widget's sizing behavior. Wrapping widgets in a ConstrainedBox lets you specify their min and max width and heights. 
- Official Youtube Tutorial: https://youtu.be/o2KveVr7adg
- Official Doc: https://api.flutter.dev/flutter/widgets/ConstrainedBox-class.html

```dart
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is a nomrla Text without any constraint ',
            ),
            SizedBox(
              height: 25,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 55),
              child: Text(
                'This is a nomrla Text with 55 width constraint ',
              ),
            ),
          ],
        ),
      ),
```

