# week_73_ClipPath

A new Flutter project.

## Getting Started

- Do you want your widget to have a unique shape? ClipPath allows you to define your own widget shapes! Given a CustomerClipper and a path that you define, ClipPath will constrain the widget's visible area to within this path. 
- Official Youtube Tutorial: https://youtu.be/oAUebVIb-7s
- Official Doc: https://api.flutter.dev/flutter/widgets/ClipPath-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ClipPath(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          clipper: MyCustomClipper(),
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  static const POLY_POINTS = 15;

  @override
  Path getClip(Size size) {
    var path = Path();
    var rand = Random();

    path.addPolygon(
        List.generate(
          POLY_POINTS,
          (index) => Offset(
              rand.nextDouble() * size.width, rand.nextDouble() * size.height),
        ),
        true);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
```

