import 'package:flutter/material.dart';
import 'dart:math' as math;

class Week79AnimatedWidget extends StatefulWidget {
  final String title;

  const Week79AnimatedWidget({Key key, this.title}) : super(key: key);

  @override
  _Week79AnimatedWidgetState createState() => _Week79AnimatedWidgetState();
}

class _Week79AnimatedWidgetState extends State<Week79AnimatedWidget>
    with TickerProviderStateMixin {
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
