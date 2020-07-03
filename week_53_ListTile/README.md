# week_53_ListTile

A new Flutter project.

## Getting Started

- Why spend hours working out the perfect item layout with rows, columns, containers, and various amounts of spacing and styling when you could just use a ListTile! ListTile implements the material design pattern for list items for you, leaving you to just worry about what goes in it.
- Official Youtube Tutorial: https://youtu.be/l8dj0yPBvgQ
- Official Doc: https://api.flutter.dev/flutter/material/ListTile-class.html

```dart
body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Main Title '),
              subtitle: Text('Sub Title'),
              trailing: Icon(Icons.close),
              onTap: () => {print('tap')},
            )
          ],
        ),
      ),
    );
```

