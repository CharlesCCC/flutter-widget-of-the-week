# week_71_NotificationListener

A new Flutter project.

## Getting Started

- ShaderMasks are one of Flutter’s hidden gems! ShaderMasks let you apply a shader to one or more widgets in the tree. There’s tons of cool effects you can achieve with shaders.
- Official Youtube Tutorial: https://youtu.be/cAnFbFoGM50
- Official Doc: https://api.flutter.dev/flutter/widgets/NotificationListener-class.html

```dart
  List<Widget> _list = List.generate(
      40,
      (index) => ListTile(
            title: Text('Card $index'),
          ));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: NotificationListener(
        onNotification: (notification) {
          print(notification);
          return true;
        },
        child: Center(
          child: ListView(
            children: _list,
            // itemExtent: 10,
          ),
        ),
      ),
    );
  }
```



