# week_55_SelectableText

A new Flutter project.

## Getting Started

- Have you ever wanted to make some display text in your app selectable? SelectableText is the widget for you!
- Official Youtube Tutorial: https://youtu.be/ZSU3ZXOs6hc
- Official Doc: https://master-api.flutter.dev/flutter/material/SelectableText-class.html

```dart
 body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText(
              'You can select the text here ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
              showCursor: true,
              toolbarOptions: ToolbarOptions(
                copy: true,
                cut: true,
                selectAll: true,
              ),
              cursorWidth: 10,
              cursorColor: Colors.amber,
              cursorRadius: Radius.circular(10),
            ),
          ],
        ),
      ),
```

