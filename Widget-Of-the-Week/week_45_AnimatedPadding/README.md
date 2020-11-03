# week_45_AnimatedPadding

A new Flutter project.

## Getting Started

- AnimatedPadding is a great way to provide smooth buffers and spaces between widgets and screen borders. Use this to dynamically change the padding of the widget and have it animate between the two values.
- Official Youtube Tutorial: https://youtu.be/PY2m0fhGNz4
- Official Doc: https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html

```dart
            AnimatedPadding(
              padding: EdgeInsets.all(_counter),
              duration: const Duration(microseconds: 350),
              curve: Curves.easeInOut,
              child: Container(
                color: Colors.blue,
                height: 50,
                child: Center(
                  child: Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ),
```

