import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Week57Slider extends StatefulWidget {
  Week57Slider({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Week57SliderState createState() => _Week57SliderState();
}

class _Week57SliderState extends State<Week57Slider> {
  var _value = 0.0;
  var _cvalue = 0.0;
  var _avalue = 0.0;
  RangeValues _rangeValues = RangeValues(1, 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Normal Slider Value $_value',
              style: TextStyle(fontSize: 35),
            ),
            Slider(
              value: _value,
              max: 5.0,
              min: 0.0,
              divisions: 4,
              onChanged: (double value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Text(
              'Range Slider Value $_rangeValues',
              style: TextStyle(fontSize: 25),
            ),
            RangeSlider(
              values: _rangeValues,
              min: 0,
              max: 5,
              onChanged: (value) {
                setState(() {
                  _rangeValues = value;
                });
              },
            ),
            Text(
              'Cupertino Slider Value $_cvalue',
              style: TextStyle(fontSize: 35),
            ),
            CupertinoSlider(
              value: _cvalue,
              min: 0.0,
              max: 5.0,
              onChanged: (value) {
                setState(() {
                  _cvalue = value;
                });
              },
            ),
            Text(
              'Adaptive Slider Value $_avalue',
              style: TextStyle(fontSize: 35),
            ),
            Slider.adaptive(
              min: 0.0,
              max: 5.0,
              value: _avalue,
              onChanged: (value) {
                setState(() {
                  _avalue = value;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
