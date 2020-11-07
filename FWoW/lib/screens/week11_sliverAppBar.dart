import 'package:flutter/material.dart';

class Week11SliverAppBar extends StatefulWidget {
  Week11SliverAppBar({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week11SliverAppBarState createState() => _Week11SliverAppBarState();
}

class _Week11SliverAppBarState extends State<Week11SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            centerTitle: true,
            floating: true,
            stretch: true,
            snap: true, //have to have floating set to true -- "Snap"
            pinned: false,
            title: Text("Sliver App Bar"),
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Flexible Space bar"),
              stretchModes: [
                StretchMode.zoomBackground,
                StretchMode.blurBackground,
                StretchMode.fadeTitle,
              ],
            ),
            onStretchTrigger: () {
              print('pull to refresh ~~~');
              return;
            },
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          label: 'A',
          icon: Icon(Icons.ac_unit),
        ),
        BottomNavigationBarItem(
          label: 'B',
          icon: Icon(Icons.ac_unit),
        ),
        BottomNavigationBarItem(
          label: 'C',
          icon: Icon(Icons.ac_unit),
        ),
      ]),
    );
  }
}
