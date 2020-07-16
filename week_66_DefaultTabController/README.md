# week_66_DefaultTabController

A new Flutter project.

## Getting Started

- Do you need to organize your widgets into tabs? The DefaultTabController, TabBar, and TabBarView widgets are for you.
- Official Youtube Tutorial: https://youtu.be/POtoEH-5l40
- Official Doc: 
  - https://api.flutter.dev/flutter/material/DefaultTabController-class.html
  - https://api.flutter.dev/flutter/material/TabBar-class.html

```dart
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text: 'A Tab'),
              Tab(text: 'B Tab'),
              Tab(text: 'C Tab'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.ac_unit, size: 125),
            Icon(Icons.battery_alert, size: 125),
            Icon(Icons.cake, size: 125),
          ],
        ),
      ),
    );
  }
```

