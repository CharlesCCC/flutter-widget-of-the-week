# week_46_IndexedStack

A new Flutter project.

## Getting Started

- IndexedStack has you covered! Swap between widgets, without animation, and the state of the widgets is preserved.
- Official Youtube Tutorial: https://youtu.be/_O0PPD1Xfbk
- Official Doc: https://api.flutter.dev/flutter/widgets/IndexedStack-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _widgetIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      _widgetIndex = _counter % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: IndexedStack(
          index: _widgetIndex,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline1,
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

```

