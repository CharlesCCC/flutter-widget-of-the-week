import 'package:flutter/material.dart';

class Week11SliverAppBar extends StatefulWidget {
  Week11SliverAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week11SliverAppBarState createState() => _Week11SliverAppBarState();
}

class _Week11SliverAppBarState extends State<Week11SliverAppBar> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            centerTitle: true,
            floating: true,
            snap: true, //have to have floating set to true -- "Snap"
            pinned: false,
            title: Text("Sliver App Bar"),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 80,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          title: Text('A'),
          icon: Icon(Icons.ac_unit),
        ),
        BottomNavigationBarItem(
          title: Text('B'),
          icon: Icon(Icons.ac_unit),
        ),
        BottomNavigationBarItem(
          title: Text('C'),
          icon: Icon(Icons.ac_unit),
        ),
      ]),
    );
  }
}
