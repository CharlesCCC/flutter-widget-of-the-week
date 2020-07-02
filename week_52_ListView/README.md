# week_52_ListView

A new Flutter project.

## Getting Started

- ListView is as simple as supplying a list of items and can be easily customized to your liking.
- Official Youtube Tutorial: https://youtu.be/KJpkjHGiI5A
- Official Doc: https://api.flutter.dev/flutter/widgets/ListView-class.html

```dart
     body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Fixed List',
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            Text('Scrollable Dynamic List'),
            Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(15),
                  itemCount: _list.length,
                  itemBuilder: (ctx, index) {
                    return Container(
                      height: 75,
                      margin: EdgeInsets.all(15),
                      color: Colors.amber[colorCodes[index % 2]],
                      child: Text(_list[index]),
                    );
                  }),
            ),
          ],
        ),
```

