import 'package:FWoW/constants.dart';
import 'package:FWoW/screens/week1_safearea.dart';
import 'package:FWoW/screens/week2_expaned.dart';
import 'package:FWoW/screens/week3_wrap.dart';
import 'package:FWoW/screens/week4_animatedContainer.dart';
import 'package:FWoW/screens/week5_opacity.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FWoW',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Widget of the Week'),
      routes: {
        //'/': (context) => MyHomePage(),
        Const.WEEK1_SafeArea: (context) => Week1SafeArea(),
        Const.WEEK2_Expanded: (context) => Week2Expanded(),
        Const.WEEK3_Wrap: (context) => Week3Wrap(),
        Const.WEEK4_AnimatedContainer: (context) => Week4AnimatedContainer(),
        Const.WEEK5_Opacity: (context) => Week5Opacity(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: Const.ROUTES.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.developer_board),
              title: Text(Const.ROUTES[index]),
              trailing: Icon(Icons.check_box_outline_blank),
              onTap: () =>
                  Navigator.of(context).pushNamed('${Const.ROUTES[index]}'),
            );
          },
        ),
      ),
    );
  }
}
