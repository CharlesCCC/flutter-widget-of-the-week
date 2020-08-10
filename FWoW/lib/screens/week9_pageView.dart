import 'package:FWoW/widgets/week9_widgets.dart';
import 'package:flutter/material.dart';

class Week9PageView extends StatefulWidget {
  Week9PageView({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week9PageViewState createState() => _Week9PageViewState();
}

class _Week9PageViewState extends State<Week9PageView> {
  final _pageController = PageController(
    initialPage: 1,
    viewportFraction: 0.9,
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.vertical,
      children: [
        MyPage1Widget(),
        MyPage2Widget(),
        MyPage3Widget(),
      ],
    );
  }
}
