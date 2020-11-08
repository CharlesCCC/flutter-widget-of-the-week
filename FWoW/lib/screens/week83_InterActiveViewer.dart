import 'package:flutter/material.dart';

class Week83InterActiveViewer extends StatelessWidget {
  final String title;
  Week83InterActiveViewer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: InteractiveViewer(
        child: Image.network(
          'https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-apples-1296x728-feature.jpg',
          // width: 150,
        ),
        constrained: false,
      ),
    );
  }
}
