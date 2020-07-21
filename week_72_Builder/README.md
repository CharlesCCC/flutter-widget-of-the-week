# week_72_Builder

A new Flutter project.

## Getting Started

- Most of the time, widgets in Flutter build without looking up any extra information about their parents. Sometimes, you might write some code where the <u>child widget needs to access the build context of a parent widget in the same build method</u>. That's what the Builder widget is for!
- Official Youtube Tutorial: https://youtu.be/xXNOkIuSYuA
- Official Doc: https://api.flutter.dev/flutter/widgets/Builder-class.html

```dart
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Builder(
          builder: (context) => RaisedButton(
            child: Text('Click me'),
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Test Builder Widget!'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
```

