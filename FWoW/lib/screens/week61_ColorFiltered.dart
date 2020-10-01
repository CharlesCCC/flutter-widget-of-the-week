import 'package:flutter/material.dart';

class Week61ColorFilter extends StatefulWidget {
  Week61ColorFilter({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week61ColorFilterState createState() => _Week61ColorFilterState();
}

class _Week61ColorFilterState extends State<Week61ColorFilter> {
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
