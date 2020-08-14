import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Week13FadeInImage extends StatefulWidget {
  Week13FadeInImage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week13FadeInImageState createState() => _Week13FadeInImageState();
}

class _Week13FadeInImageState extends State<Week13FadeInImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: [
        Image.network(
          'https://picsum.photos/250?image=9',
          width: 150,
        ),
        Text(
          'Normal Image loading',
          style: TextStyle(
            color: Colors.amber,
            fontSize: 25.0,
          ),
        ),
        Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            fadeInDuration: Duration(
              seconds: 2,
            ),
            placeholder: kTransparentImage, //could use local gif/img as well.
            image: 'https://picsum.photos/250?image=9',
          ),
        ),
      ]),
    );
  }
}
