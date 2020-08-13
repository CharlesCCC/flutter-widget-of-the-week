import 'package:flutter/material.dart';

class Week12SliverListGrid extends StatefulWidget {
  Week12SliverListGrid({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week12SliverListGridState createState() => _Week12SliverListGridState();
}

class _Week12SliverListGridState extends State<Week12SliverListGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  Container(
                    height: 90,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 90,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.amber[100 * (index % 9)],
                      child: Text('grid item $index'),
                    );
                  },
                  childCount: 20,
                ),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200.0,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,
                  childAspectRatio: 4.0,
                ))
          ],
        ),
      ),
    );
  }
}
