# week_75_Divider

A new Flutter project.

## Getting Started

- When two widgets need some space from each other it can be helpful to draw a line between them. The Divider widget is useful wherever you have widgets or groups of widgets that need to be separated. Learn how to divide your widgets and get the dimensions exactly how you want them!
- Official Youtube Tutorial: https://youtu.be/_liUC641Nmk
- Official Doc: https://api.flutter.dev/flutter/material/Divider-class.html

```dart
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.amber,
                child: const Center(
                  child: Text('Above'),
                ),
              ),
            ),
            const Divider(
              color: Colors.black,
              height: 20,
              thickness: 5,
              indent: 20,
              endIndent: 0,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Below'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
```

