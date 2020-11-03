# week_39_LimitedBox

A new Flutter project.

## Getting Started

- The LimitedBox widget provides size constraints to widgets in cases where their dimensions are unbounded.
- Official Youtube Tutorial: https://youtu.be/uVki2CIzBTs
- Official Doc: https://api.flutter.dev/flutter/widgets/LimitedBox-class.html

```dar
      body: ListView(
        children: <Widget>[
          for (var i = 0; i < 10; i++)
            LimitedBox(
              maxHeight: 100,
              child: Container(
                color: Color.fromARGB(
                  rng.nextInt(250),
                  rng.nextInt(250),
                  rng.nextInt(250),
                  rng.nextInt(250),
                ),
              ),
            ),
        ],
      ),
```

