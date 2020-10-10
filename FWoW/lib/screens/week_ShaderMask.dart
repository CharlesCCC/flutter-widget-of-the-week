import 'package:flutter/material.dart';

class Week70ShaderMask extends StatefulWidget {
  Week70ShaderMask({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week70ShaderMaskState createState() => _Week70ShaderMaskState();
}

class _Week70ShaderMaskState extends State<Week70ShaderMask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ShaderMask(
          shaderCallback: (bounds) {
            return RadialGradient(
              center: Alignment.topLeft,
              radius: 0.5,
              colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          //blendMode: BlendMode.hardLight,
          child: const Text(
            'Buring and buring ',
            style: TextStyle(
              fontSize: 72.0,
              color: Colors.white, //have to set the color to see the effect
            ),
          ),
        ),
      ),
    );
  }
}
