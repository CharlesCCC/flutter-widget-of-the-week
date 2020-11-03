# week_43_AnimatedSwitcher

A new Flutter project.

## Getting Started

- The AnimatedSwitcher widget allows you to switch between two or more widgets with an animation as you transition.
- Official Youtube Tutorial: https://youtu.be/2W7POjFb88g
- Official Doc: https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html

```dart
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              child: Text(
                '$_counter',
                key: ValueKey<int>(_counter),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
```

