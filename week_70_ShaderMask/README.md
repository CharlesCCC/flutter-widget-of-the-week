# week_70_ShaderMask

A new Flutter project.

## Getting Started

- ShaderMasks are one of Flutter’s hidden gems! ShaderMasks let you apply a shader to one or more widgets in the tree. There’s tons of cool effects you can achieve with shaders.
- Official Youtube Tutorial: https://youtu.be/7sUL66pTQ7Q
- Official Doc: https://api.flutter.dev/flutter/widgets/ShaderMask-class.html

```dart
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 0.5,
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          //blendMode: BlendMode.hardLight,
          child: const Text(
            'Buring and buring ',
            style: TextStyle(
              fontSize: 72.0,
              color: Colors.white, //have to set the color to see the effect
            ),
          ),
        ),
      ),
    );
  }
```

