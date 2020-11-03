# week_60_DraggableScrollableSheet

A new Flutter project.

## Getting Started

- Are you looking to drag a widget onto the screen? Does that widget have scrollable content? DraggableScrollableSheet has you covered!
- Official Youtube Tutorial: https://youtu.be/Hgw819mL_78
- Official Doc: https://api.flutter.dev/flutter/widgets/DraggableScrollableSheet-class.html

```dart
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox.expand(
        child: DraggableScrollableSheet(
          builder: (BuildContext context, ScrollController scrollController) {
            return Container(
              color: Colors.blue[100],
              child: ListView.builder(
                controller: scrollController,
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(title: Text('Item $index'));
                },
              ),
            );
          },
        ),
      ),
    );
  }
```

