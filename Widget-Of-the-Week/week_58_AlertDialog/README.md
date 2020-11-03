# week_58_AlertDialog

A new Flutter project.

## Getting Started

- Do you want to alert someone about something or maybe get their input? Does your app have a critical junction where users need to make an important decision? AlertDialog is the widget for you!
- Official Youtube Tutorial: https://youtu.be/75CsnyRXf5I
- Official Doc: https://api.flutter.dev/flutter/material/AlertDialog-class.html

```dart
Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            FlatButton(
              child: Text('Nope'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Click Me To Show Dialog'),
          onPressed: _showMyDialog,
        ),
      ),
    );
  }
```

