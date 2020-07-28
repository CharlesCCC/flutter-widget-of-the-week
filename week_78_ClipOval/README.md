# week_78_ClipOval

A new Flutter project.

## Getting Started

- Sometimes, a picture or some other part of your screen can look too box-ish. The ClipOval widget can clip its children to round circles and ovals. Use this widget and think outside the box!
- Official Youtube Tutorial: https://youtu.be/vzWWDO6whIM
- Official Doc: https://api.flutter.dev/flutter/widgets/ClipOval-class.html

```dart
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            SizedBox(height: 30),
            TweenAnimationBuilder(
              tween: _counter.isEven
                  ? Tween<double>(begin: 0, end: 1)
                  : Tween<double>(begin: 1, end: 0),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutCubic,
              builder: (context, size, child) {
                return ClipOval(
                  clipBehavior: Clip.hardEdge,
                  clipper: MyCircleClipper(size),
                  child: Transform.scale(
                    scale: 2 - size,
                    child: child,
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink[200], Colors.blue[200]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                height: 200,
                child: Center(
                  child: Text(
                    '${_counter ~/ 2}',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyCircleClipper extends CustomClipper<Rect> {
  final double radius;

  MyCircleClipper(this.radius);

  @override
  Rect getClip(Size size) {
    var smaller = min(size.width, size.height);
    return Rect.fromCenter(
      center: size.center(Offset.zero),
      width: smaller * radius,
      height: smaller * radius,
    );
  }

  @override
  bool shouldReclip(MyCircleClipper oldClipper) {
    return radius != oldClipper.radius;
  }
}
```

