# week_67_Drawer

A new Flutter project.

## Getting Started

- Need to provide navigation to other pages? Try using a Drawer!
- Official Youtube Tutorial: https://youtu.be/WRj86iHihgY
- Official Doc: https://api.flutter.dev/flutter/material/Drawer-class.html

```dart
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('End/Right Drawer'),
            ),
            ListTile(
              title: Text('A'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              title: Text('B'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('A'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              title: Text('B'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              title: Text('C'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
            ListTile(
              title: Text('D'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('Demo Drawer'),),
    );
  }
```

