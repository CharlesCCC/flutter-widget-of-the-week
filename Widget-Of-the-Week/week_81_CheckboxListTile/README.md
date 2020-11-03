# week_81_CheckboxListTile

A new Flutter project.

## Getting Started

- Whenever you accomplish something, it's rewarding to be able to check it off your list. There's never just one thing to do, though, and these check boxes usually come in a list. CheckboxListTile combines two widgets: Checkbox and ListTile, but instead of simply making the leading or trailing widget a checkbox, it also makes it so that tapping anywhere in the ListTile toggles the checkbox.  
- Official Youtube Tutorial: https://youtu.be/RkSqPAn9szs
- Official Doc: https://api.flutter.dev/flutter/material/CheckboxListTile-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => CheckboxListTile(
            value: _checked,
            title: Text('Title $index'),
            secondary: Text('Secondary'),
            subtitle: Text('SubTitle'),
            onChanged: (value) {
              setState(() {
                _checked = value;
              });
              print(value);
            },
          ),
        ),
      ),
    );
  }
}
```

