# week_41_RichText

A new Flutter project.

## Getting Started

- The RichText widget allows you to style your text. Whether you want to emphasize one word in bold and display another in a different color or font, RichText can help!
- Official Youtube Tutorial: https://youtu.be/rykDVh-QFfw
- Official Doc: https://api.flutter.dev/flutter/widgets/RichText-class.html

```dart
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
```

