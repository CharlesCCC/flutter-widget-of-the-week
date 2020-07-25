# week_76_IgnorePointer

A new Flutter project.

## Getting Started

- It can be useful to prevent the user from interacting with parts of your app. When the UI changes under users' fingers, that's actually a pretty common and frustrating problem. You could address this problem by disabling all interactive elements in your app, one by one, or you could use IgnorePointer.
- Official Youtube Tutorial: https://youtu.be/qV9pqHWxYgI
- Official Doc: https://api.flutter.dev/flutter/widgets/IgnorePointer-class.html

```dart
 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            InkWell(
              child: Container(
                width: 200,
                height: 100,
                color: Colors.red,
                child: Center(child: Text('Tabable')),
              ),
              onTap: () {
                print('Tabed');
              },
            ),
            SizedBox(
              height: 25.0,
            ),
            IgnorePointer(
              child: InkWell(
                child: Container(
                  width: 200,
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Not Tabable')),
                ),
                onTap: () {
                  print('Tabed');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
```

