# week_64_TweenAnimationBuilder

A new Flutter project.

## Getting Started

- Do you want a simple animation, but none of the built-in implicit animation widgets do the trick? TweenAnimationBuilder is here for all your custom animation needs without having to worry about that AnimationController! 
- Official Youtube Tutorial: https://youtu.be/l9uHB8VXZOg
- Official Doc: https://api.flutter.dev/flutter/widgets/TweenAnimationBuilder-class.html

```dart
      body: Center(
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: Duration(seconds: 1),
          builder: (context, value, child) {
            return IconButton(
              iconSize: value,
              icon: child,
              tooltip: 'Click Here',
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 48.0 ? 128.0 : 48.0;
                });
              },
            );
          },
          child: Icon(Icons.ac_unit),
        ),
      ),
```

