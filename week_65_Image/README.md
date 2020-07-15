# week_65_Image

A new Flutter project.

## Getting Started

**Week #65 - Image**

- Need your app to display images? Flutter has you covered! Use the Image widget to render an image to the screen, wherever it may come from: assets, network, file system, RAM and more!
- Official Youtube Tutorial: https://youtu.be/7oIAs-0G4mw
- Official Doc: https://api.flutter.dev/flutter/widgets/Image-class.html

```dart
body: Center(
        child: Column(
          children: <Widget>[
            Text('Normal Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              semanticLabel: 'Owl',
            ),
            Text('colorBlendMode: BlendMode.darken Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              colorBlendMode: BlendMode.darken,
            ),
            Text('Normal Network Image:'),
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 150.0,
              loadingBuilder: (context, child, loadingProgress) {
                return loadingProgress == null
                    ? child
                    : Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
```

