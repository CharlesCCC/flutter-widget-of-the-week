# week_57_Slider

A new Flutter project.

## Getting Started

- Need a quick way to select from a range of values? The Slider widget selects a single value from a range. 
- Official Youtube Tutorial: https://youtu.be/ufb4gIPDmEs
- Official Doc: https://api.flutter.dev/flutter/material/Slider-class.html
  - https://api.flutter.dev/flutter/cupertino/CupertinoSlider-class.html
  - https://api.flutter.dev/flutter/material/RangeSlider-class.html

```dart
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
```

