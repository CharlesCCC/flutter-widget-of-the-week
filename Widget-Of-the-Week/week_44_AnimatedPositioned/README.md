# week_44_AnimatedPositioned

A new Flutter project.

## Getting Started

- AnimatedPositioned automatically transitions the child's position over a given duration whenever the given position changes. Directional properties are implemented, allowing your widget to grow and shrink as part of the animation! (Note: Only works if it's the child of a [Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html). )
- Official Youtube Tutorial: https://youtu.be/hC3s2YdtWt8
- Official Doc: https://api.flutter.dev/flutter/widgets/AnimatedPositioned-class.html

```dart
      body: Center(
        child: Stack(
          children: <Widget>[
            Positioned(
              bottom: 400,
              right: 80,
              child: Text(
                'Peek-A-Boo',
              ),
            ),
            AnimatedPositioned(
              child: Container(
                width: 300,
                height: 100,
                color: Colors.blue,
                child: Text('Toggle the Floading action to see the secret'),
              ),
              duration: Duration(milliseconds: 500),
              bottom: showMessage ? 450 : 400,
              right: 80,
            )
          ],
        ),
      ),
```

