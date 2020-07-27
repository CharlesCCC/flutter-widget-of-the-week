# week_77_CupertinoActivityIndicator

A new Flutter project.

## Getting Started

- If you are using Cupertino widgets for your UI and your app needs a loading indicator, then CupertinoActivityIndicator is the widget for you!
- Official Youtube Tutorial: https://youtu.be/AENVH-ZqKDQ
- Official Doc: https://api.flutter.dev/flutter/cupertino/CupertinoActivityIndicator-class.html

```dart
class _MyHomePageState extends State<MyHomePage> {
  Future<String> getTestString() async {
    return Future<String>.delayed(
      Duration(seconds: 3),
      () => 'Data Loaded',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder(
          future: getTestString(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CupertinoActivityIndicator(),
              );
            }
            return Text(snapshot.data);
          },
        ),
      ),
    );
  }
}
```

