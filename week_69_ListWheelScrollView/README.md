# week_69_ListWheelScrollView

A new Flutter project.

## Getting Started

- ListViews let the user see or choose from a number of items that wouldn't normally fit on the screen, but sometimes, an ordinary ListView is too flat and boring. Fortunately, there's ListWheelScrollView.
- Official Youtube Tutorial: https://youtu.be/dUhmWAz4C7Y
- Official Doc: https://api.flutter.dev/flutter/widgets/ListWheelScrollView-class.html
  - More In depth explain https://www.woolha.com/tutorials/flutter-using-listwheelscrollview-widget-examples

```dart
  List<Widget> _list = List.generate(
    48,
    (index) => Card(
      child: ListTile(
        title: Text('Card # $index'),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListWheelScrollView(
        itemExtent: 175.0,
        children: _list,
        // useMagnifier: true,
        // magnification: 1.0,
        perspective: 0.002,
        physics: FixedExtentScrollPhysics(),
      ),
    );
  }
```

