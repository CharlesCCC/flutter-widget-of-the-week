import 'package:FWoW/constants.dart';
import 'package:flutter/material.dart';

class Week2Expanded extends StatelessWidget {
  const Week2Expanded({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.WEEK2_Expanded),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                width: 100,
                alignment: AlignmentDirectional.center,
                child: Text("Column Expanded"),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    alignment: AlignmentDirectional.center,
                    child: Text("Row Expanded with flex 1"),
                  ),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.pink,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    color: Colors.green,
                    height: 100,
                    alignment: AlignmentDirectional.center,
                    child: Text("Row Expanded with flex 5"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
