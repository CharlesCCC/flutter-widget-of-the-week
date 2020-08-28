import 'package:FWoW/constants.dart';
import 'package:FWoW/screens/week10_table.dart';
import 'package:FWoW/screens/week11_sliverAppBar.dart';
import 'package:FWoW/screens/week12_sliverListGrid.dart';
import 'package:FWoW/screens/week13_fadeInImage.dart';
import 'package:FWoW/screens/week14_StreamBuilder.dart';
import 'package:FWoW/screens/week15_InheritedModel.dart';
import 'package:FWoW/screens/week16_clipRRect.dart';
import 'package:FWoW/screens/week17_Hero.dart';
import 'package:FWoW/screens/week18_CustomPaint.dart';
import 'package:FWoW/screens/week19_ToolTip.dart';
import 'package:FWoW/screens/week1_safearea.dart';
import 'package:FWoW/screens/week20_FittedBox.dart';
import 'package:FWoW/screens/week21_LayOutBuilder.dart';
import 'package:FWoW/screens/week22_AbsorbPointer.dart';
import 'package:FWoW/screens/week23_Transform.dart';
import 'package:FWoW/screens/week24_BackDropFilter.dart';
import 'package:FWoW/screens/week25_Align.dart';
import 'package:FWoW/screens/week26_Positioned.dart';
import 'package:FWoW/screens/week27_AnimatedBuilder.dart';
import 'package:FWoW/screens/week2_expaned.dart';
import 'package:FWoW/screens/week3_wrap.dart';
import 'package:FWoW/screens/week4_animatedContainer.dart';
import 'package:FWoW/screens/week5_opacity.dart';
import 'package:FWoW/screens/week6_futureBuilder.dart';
import 'package:FWoW/screens/week7_fadeTransition.dart';
import 'package:FWoW/screens/week8_floatingActionButton.dart';
import 'package:FWoW/screens/week9_pageView.dart';
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
      home: MyHomePage(title: 'Flutter Widget of the Week Demo'),
      routes: getRoutes(),
    );
  }

  Map<String, WidgetBuilder> getRoutes() {
    return {
      //'/': (context) => MyHomePage(),
      Const.WEEK1_SafeArea: (context) => Week1SafeArea(),
      Const.WEEK2_Expanded: (context) => Week2Expanded(),
      Const.WEEK3_Wrap: (context) => Week3Wrap(),
      Const.WEEK4_AnimatedContainer: (context) => Week4AnimatedContainer(),
      Const.WEEK5_Opacity: (context) => Week5Opacity(),
      Const.WEEK6_FutureBuilder: (context) => Week6FutureBuilder(),
      Const.WEEK7_FadeTransition: (context) => Week7FadeTransition(),
      Const.WEEK8_FloatingActionButton: (context) =>
          Week8FloatingActionButton(),
      Const.WEEK9_PageView: (context) => Week9PageView(),
      Const.WEEK10_Table: (context) => Week10Table(title: Const.WEEK10_Table),
      Const.WEEK11_SliverAppBar: (context) =>
          Week11SliverAppBar(title: Const.WEEK11_SliverAppBar),
      Const.WEEK12_SliverListGrid: (context) => Week12SliverListGrid(
            title: Const.WEEK12_SliverListGrid,
          ),
      Const.WEEK13_FadeInImage: (context) => Week13FadeInImage(
            title: Const.WEEK13_FadeInImage,
          ),
      Const.WEEK14_StreamBuilder: (context) => Week14StreamBuilder(
            title: Const.WEEK14_StreamBuilder,
          ),
      Const.WEEK15_InheritedModel: (context) =>
          Week15InheritedModel(title: Const.WEEK15_InheritedModel),
      Const.WEEK16_ClipRRect: (context) =>
          Week16ClipRRect(title: Const.WEEK16_ClipRRect),
      Const.WEEK17_Hero: (context) => Week17Hero(),
      Const.WEEK18_CustomPaint: (context) =>
          Week18CustomPaint(title: Const.WEEK18_CustomPaint),
      Const.WEEK19_ToolTip: (context) =>
          Week19ToolTip(title: Const.WEEK19_ToolTip),
      Const.WEEK20_FittedBox: (context) =>
          Week20FittedBox(title: Const.WEEK20_FittedBox),
      Const.WEEK21_LayOutBuilder: (context) =>
          Week21LayOutBuilder(title: Const.WEEK21_LayOutBuilder),
      Const.WEEK22_AbsorbPointer: (context) =>
          Week22AbsorbPointer(title: Const.WEEK22_AbsorbPointer),
      Const.WEEK23_Transform: (context) =>
          Week23Transform(title: Const.WEEK23_Transform),
      Const.WEEK24_BackdropFilter: (context) =>
          Week24BackdropFilter(title: Const.WEEK24_BackdropFilter),
      Const.WEEK25_Align: (context) => Week25Align(title: Const.WEEK25_Align),
      Const.WEEK26_Positioned: (context) =>
          Week26Positioned(title: Const.WEEK26_Positioned),
      Const.WEEK27_AnimatedBuilder: (context) => Week27AnimatedBuilder(),
    };
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
