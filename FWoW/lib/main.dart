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
import 'package:FWoW/screens/week28_Dismissible.dart';
import 'package:FWoW/screens/week29_SizedBox.dart';
import 'package:FWoW/screens/week2_expaned.dart';
import 'package:FWoW/screens/week30_ValueListenableBuilder.dart';
import 'package:FWoW/screens/week31_Draggable.dart';
import 'package:FWoW/screens/week32_AnimatedList.dart';
import 'package:FWoW/screens/week33_Flexible.dart';
import 'package:FWoW/screens/week34_MediaQuery.dart';
import 'package:FWoW/screens/week35_Spacer.dart';
import 'package:FWoW/screens/week36_InheritedWidget.dart';
import 'package:FWoW/screens/week37_AnimatedIcon.dart';
import 'package:FWoW/screens/week38_AspectRatio.dart';
import 'package:FWoW/screens/week39_LimistedBox.dart';
import 'package:FWoW/screens/week3_wrap.dart';
import 'package:FWoW/screens/week40_PlaceHolder.dart';
import 'package:FWoW/screens/week41_RichText.dart';
import 'package:FWoW/screens/week42_ReorderableListView.dart';
import 'package:FWoW/screens/week43_AnimatedSwitcher.dart';
import 'package:FWoW/screens/week44_AnimatedPositioned.dart';
import 'package:FWoW/screens/week45_AnimatedPadding.dart';
import 'package:FWoW/screens/week46_IndexedStack.dart';
import 'package:FWoW/screens/week47_Semantics.dart';
import 'package:FWoW/screens/week48_ConstrainedBox.dart';
import 'package:FWoW/screens/week49_Stack.dart';
import 'package:FWoW/screens/week4_animatedContainer.dart';
import 'package:FWoW/screens/week50_AnimatedOpacity.dart';
import 'package:FWoW/screens/week51_fractionallySizedBox.dart';
import 'package:FWoW/screens/week52_ListView.dart';
import 'package:FWoW/screens/week53_ListTile.dart';
import 'package:FWoW/screens/week54_Container.dart';
import 'package:FWoW/screens/week55_SelectableText.dart';
import 'package:FWoW/screens/week56_DataTable.dart';
import 'package:FWoW/screens/week57_Slider.dart';
import 'package:FWoW/screens/week58_AlertDialog.dart';
import 'package:FWoW/screens/week59_AnimatedCrossFade.dart';
import 'package:FWoW/screens/week5_opacity.dart';
import 'package:FWoW/screens/week60_DraggableScrollableSheet.dart';
import 'package:FWoW/screens/week61_ColorFiltered.dart';
import 'package:FWoW/screens/week62_ToggleButtons.dart';
import 'package:FWoW/screens/week63_CupertinoActionSheet.dart';
import 'package:FWoW/screens/week64_TweenAnimationBuilder.dart';
import 'package:FWoW/screens/week65_Image.dart';
import 'package:FWoW/screens/week66_DefaultTabControl.dart';
import 'package:FWoW/screens/week67_Drawer.dart';
import 'package:FWoW/screens/week68_SnackBar.dart';
import 'package:FWoW/screens/week69_ListWheelScrollView.dart';
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
      Const.WEEK28_Dismissible: (context) =>
          Week28Dismissible(title: Const.WEEK28_Dismissible),
      Const.WEEk29_SizedBox: (context) =>
          Week29SizedBox(title: Const.WEEk29_SizedBox),
      Const.WEEK30_ValueListenableBuilder: (context) =>
          Week30ValueListenableBuilder(
              title: Const.WEEK30_ValueListenableBuilder),
      Const.WEEK31_Draggable: (context) =>
          Week31Draggable(title: Const.WEEK31_Draggable),
      Const.WEEK32_AnimatedList: (context) => Week32AnimatedList(),
      Const.WEEK33_Flexible: (context) =>
          Week33Flexible(title: Const.WEEK33_Flexible),
      Const.WEEK34_MediaQuery: (context) =>
          Week34MediaQuery(title: Const.WEEK34_MediaQuery),
      Const.WEEK35_Spacer: (context) =>
          Week35Spacer(title: Const.WEEK35_Spacer),
      Const.WEEK36_InheritedWidget: (context) =>
          Week36InheritedWidget(title: Const.WEEK36_InheritedWidget),
      Const.WEEK37_AnimatedIcon: (context) =>
          Week37AnimatedIcon(title: Const.WEEK37_AnimatedIcon),
      Const.WEEK38_AspectRatio: (context) =>
          Week38AspectRatio(title: Const.WEEK38_AspectRatio),
      Const.WEEK39_LimitedBox: (context) =>
          Week39LimitedBox(title: Const.WEEK39_LimitedBox),
      Const.WEEK40_PlaceHolder: (context) =>
          Week40PlaceHolder(title: Const.WEEK40_PlaceHolder),
      Const.WEEK41_RichText: (context) =>
          Week41RichText(title: Const.WEEK41_RichText),
      Const.WEEK42_ReorderableListView: (context) =>
          Week42ReorderableListView(title: Const.WEEK42_ReorderableListView),
      Const.WEEK43_AnimatedSwitcher: (context) =>
          Week43AnimatedSwitcher(title: Const.WEEK43_AnimatedSwitcher),
      Const.WEEK44_AnimatedPositioned: (context) =>
          Week44AnimatedPositioned(title: Const.WEEK44_AnimatedPositioned),
      Const.WEEK45_AnimatedPadding: (context) =>
          Week45AnimatedPadding(title: Const.WEEK45_AnimatedPadding),
      Const.WEEK46_IndexedStack: (context) =>
          Week46IndexedStack(title: Const.WEEK46_IndexedStack),
      Const.WEEK47_Semantics: (context) =>
          Week47Semantics(title: Const.WEEK47_Semantics),
      Const.WEEK48_ConstrainedBox: (context) =>
          Week48ConstrainedBox(title: Const.WEEK48_ConstrainedBox),
      Const.WEEK49_Stack: (context) => Week49Stack(title: Const.WEEK49_Stack),
      Const.WEEK50_AnimatedOpacity: (context) =>
          Week50AnimatedOpacity(title: Const.WEEK50_AnimatedOpacity),
      Const.WEEK51_FractionallySizedBox: (context) =>
          Week51FractionallySizedBox(title: Const.WEEK51_FractionallySizedBox),
      Const.WEEK52_ListView: (context) =>
          Week52ListView(title: Const.WEEK52_ListView),
      Const.WEEK53_ListTile: (context) =>
          Week53ListTile(title: Const.WEEK53_ListTile),
      Const.WEEK54_Container: (context) =>
          Week54Container(title: Const.WEEK54_Container),
      Const.WEEK55_SelectableText: (context) =>
          Week55SelectableText(title: Const.WEEK55_SelectableText),
      Const.WEEK56_DataTable: (context) =>
          Week56DataTable(title: Const.WEEK56_DataTable),
      Const.WEEK57_Slider: (context) =>
          Week57Slider(title: Const.WEEK57_Slider),
      Const.WEEK58_AlertDialog: (context) =>
          Week58AlertDialog(title: Const.WEEK58_AlertDialog),
      Const.WEEK59_AnimatedCrossFade: (context) =>
          Week59AnimatedCrossFade(title: Const.WEEK59_AnimatedCrossFade),
      Const.WEEK60_DraggableScrollableSheet: (context) =>
          Week60DraggableScrollableSheet(
              title: Const.WEEK60_DraggableScrollableSheet),
      Const.WEEK61_ColorFilter: (context) =>
          Week61ColorFilter(title: Const.WEEK61_ColorFilter),
      Const.WEEK62_ToggleButtons: (context) =>
          Wweek62ToggleButtons(title: Const.WEEK62_ToggleButtons),
      Const.WEEK63_CupertinoActionSheet: (context) =>
          Week63CupertinoActionSheet(title: Const.WEEK63_CupertinoActionSheet),
      Const.WEEK64_TweenAnimationBuilder: (context) =>
          Week64TweenAnimationBuilder(
              title: Const.WEEK64_TweenAnimationBuilder),
      Const.WEEK65_Image: (context) => Week65Image(title: Const.WEEK65_Image),
      Const.WEEK66_DefaultTabController: (context) =>
          Week66DefaultTabController(title: Const.WEEK66_DefaultTabController),
      Const.WEEK67_Drawer: (context) =>
          Week67Drawer(title: Const.WEEK67_Drawer),
      Const.WEEK68_SnackBar: (context) =>
          Week68SnackBar(title: Const.WEEK68_SnackBar),
      Const.WEEK69_ListWheelScrollView: (context) =>
          Week69ListWheelScrollView(title: Const.WEEK69_ListWheelScrollView),
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
