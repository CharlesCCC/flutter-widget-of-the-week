# week_59_AnimatedCrossFade

A new Flutter project.

## Getting Started

- Cross fade is a cinematic term in which one thing gradually fades into another. Wouldn't it be useful to have something similar, but for Flutter widgets? AnimatedCrossFade to the rescue!
- Official Youtube Tutorial: https://youtu.be/PGK2UUAyE54
- Official Doc: https://api.flutter.dev/flutter/widgets/AnimatedCrossFade-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 200.0),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 200.0),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Text('Toggle'),
          onPressed: () {
            setState(() {
              _first = !_first;
            });
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
```

