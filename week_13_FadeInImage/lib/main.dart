import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo FadeInImage',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo FadeInImage'),
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
