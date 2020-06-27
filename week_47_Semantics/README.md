# week_47_Semantics

A new Flutter project.

## Getting Started

- Flutter's Semantics widget can annotate an app's UI with information about the meaning of other widgets. It has almost fifty properties you can use to provide descriptions, metadata and more to screen readers and other semantic analysis-based tools.
- Official Youtube Tutorial: https://youtu.be/NvtMt_DtFrQ
- Official Doc: https://api.flutter.dev/flutter/widgets/Semantics-class.html

```dart
 child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Semantics(
              label: 'Counter Text',
              hint: 'Counter Text',
              child: Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
```

