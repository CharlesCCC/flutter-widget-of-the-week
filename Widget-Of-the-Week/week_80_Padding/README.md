# week_80_Padding

A new Flutter project.

## Getting Started

- In an app with lots of widgets, things often get crowded. By using the Padding widget, you can add some space on any or all sides of a widget! 
- Official Youtube Tutorial: https://youtu.be/oD5RtLhhubg
- Official Doc: https://api.flutter.dev/flutter/widgets/Padding-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            FlexContainer(color: Colors.yellow, padding: 5.0),
            Flexible(
              child: Row(
                children: <Widget>[
                  FlexContainer(color: Colors.green, padding: 10.0),
                  FlexContainer(color: Colors.blue, padding: 15.0),
                  FlexContainer(color: Colors.green, padding: 20.0),
                ],
              ),
            ),
            FlexContainer(color: Colors.red, padding: 5.0),
          ],
        ),
      ),
    );
  }
}

class FlexContainer extends StatelessWidget {
  final color;
  final double padding;

  const FlexContainer({Key key, this.color, this.padding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Container(
          color: color,
          child: Center(
            child: Text('Padding $padding'),
          ),
        ),
      ),
    );
  }
}
```

