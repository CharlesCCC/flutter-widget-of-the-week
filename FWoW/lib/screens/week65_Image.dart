import 'package:flutter/material.dart';

class Week65Image extends StatefulWidget {
  Week65Image({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week65ImageState createState() => _Week65ImageState();
}

class _Week65ImageState extends State<Week65Image> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Normal Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              semanticLabel: 'Owl',
            ),
            Text('colorBlendMode: BlendMode.darken Asset Image:'),
            Image.asset(
              'asset/img/owl.jpg',
              height: 150.0,
              colorBlendMode: BlendMode.darken,
            ),
            Text('Normal Network Image:'),
            Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
              height: 150.0,
              loadingBuilder: (context, child, loadingProgress) {
                return loadingProgress == null
                    ? child
                    : Center(child: CircularProgressIndicator());
              },
            ),
          ],
        ),
      ),
    );
  }
}
