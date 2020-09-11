import 'package:flutter/material.dart';

class Week41RichText extends StatelessWidget {
  Week41RichText({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: 'Hello RichText ',
            style: TextStyle(color: Colors.amber, fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                text: 'bold',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 43,
                ),
              ),
              TextSpan(text: ' world!'),
            ],
          ),
        ),
      ),
    );
  }
}
