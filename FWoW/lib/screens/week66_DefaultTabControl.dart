import 'package:flutter/material.dart';

class Week66DefaultTabController extends StatefulWidget {
  Week66DefaultTabController({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week66DefaultTabControllerState createState() =>
      _Week66DefaultTabControllerState();
}

class _Week66DefaultTabControllerState
    extends State<Week66DefaultTabController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'A Tab'),
              Tab(text: 'B Tab'),
              Tab(text: 'C Tab'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.ac_unit, size: 125),
            Icon(Icons.battery_alert, size: 125),
            Icon(Icons.cake, size: 125),
          ],
        ),
      ),
    );
  }
}
