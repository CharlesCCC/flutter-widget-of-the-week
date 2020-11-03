# week_79_AnimatedWidget

A new Flutter project.

## Getting Started

- There are many different options for animations. In many cases, an AnimatedWidget is all you need to make a widget animated. Learn about some animated widgets already built for you and how to build your own! AnimatedWidget isn't a widget on its own, but it is a powerful tool in creating your own animations. 
- Official Youtube Tutorial: https://youtu.be/LKKgYpC-EPQ
- Official Doc: https://api.flutter.dev/flutter/widgets/AnimatedWidget-class.html

```dart
class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SpinningContainer(controller: _controller),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text('Stop'),
        onPressed: () {
          setState(() {
            _controller.stop();
          });
        },
      ),
    );
  }
}

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({Key key, AnimationController controller})
      : super(key: key, listenable: controller);

  Animation<double> get _progress => listenable;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(width: 200.0, height: 200.0, color: Colors.blue),
    );
  }
}
```

