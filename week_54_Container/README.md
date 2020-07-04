# week_54_Container

A new Flutter project.

## Getting Started

- The Container widget helps you compose, decorate, and position child widgets.
- Official Youtube Tutorial: https://youtu.be/c1xLMaTUWCY
- Official Doc: https://api.flutter.dev/flutter/widgets/Container-class.html

```dart
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.amber[600],
              width: 88.0,
              height: 88.0,
            ),
            Container(
              constraints: BoxConstraints.expand(
                height: Theme.of(context).textTheme.headline4.fontSize * 1.1 +
                    100.0,
              ),
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue[600],
              alignment: Alignment.center,
              child: Text(
                'Hello World',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: Colors.white),
              ),
              transform: Matrix4.rotationZ(0.2),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              color: Colors.red[600],
              width: 88.0,
              height: 88.0,
            ),
          ],
        ),
      ),
```

