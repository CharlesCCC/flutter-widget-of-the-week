# week_42_ReorderableListView

A new Flutter project.

## Getting Started

- The ReorderableListView widget presents a list of items that users can reorder just by dragging things where they want them to go.
- Official Youtube Tutorial: https://youtu.be/3fB1mxOsqJE
- Official Doc: https://api.flutter.dev/flutter/material/ReorderableListView-class.html

```dart
 body: ReorderableListView(
        children: [
          for (final item in _items)
            Container(
              key: UniqueKey(),
              color: Color.fromARGB(
                random.nextInt(250),
                random.nextInt(250),
                random.nextInt(250),
                random.nextInt(250),
              ),
              child: ListTile(
                title: Text('Item: #$item'),
              ),
            ),
        ],
        onReorder: (oldIndex, newIndex) {
          setState(() {
            int temp = _items[oldIndex];
            _items[oldIndex] = _items[newIndex];
            _items[newIndex] = temp;
          });
        },
      ),
```

