import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo ColorFiltered',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo ColorFiltered Page'),
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
      body: Center(
        child: Column(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.redAccent,
                    child: Center(
                      child: Text('Filter in Blue '),
                    ),
                  ),
                  Image.network(
                      'https://wree-fm.sagacom.com/wp-content/blogs.dir/74/files/2020/03/Awesome-DL-002.jpg'),
                ],
              ),
            ),
            Text('Filter in Blue on top '),
            Image.network(
                'https://wree-fm.sagacom.com/wp-content/blogs.dir/74/files/2020/03/Awesome-DL-002.jpg')
          ],
        ),
      ),
    );
  }
}
