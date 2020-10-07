import 'package:flutter/material.dart';

class Week67Drawer extends StatelessWidget {
  final title;

  const Week67Drawer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
      body: Center(
        child: Text('Top Left <-- Demo Drawer --> Top Rigt'),
      ),
    );
  }
}
