# week_61_ColorFiltered

A new Flutter project.

## Getting Started

- It's easy to play around with color in Flutter widgets, and not just by modifying a color parameter. Check out the ColorFiltered widget, which lets you change and morph colors in weird and wonderful ways!
- Official Youtube Tutorial: https://youtu.be/F7Cll22Dno8
- Official Doc: https://api.flutter.dev/flutter/widgets/ColorFiltered-class.html

```dar
      body: Center(
        child: Column(
          children: [
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 100,
                    color: Colors.redAccent,
                    child: Center(
                      child: Text('Filter in Blue '),
                    ),
                  ),
                  Image.network(
                      'https://wree-fm.sagacom.com/wp-content/blogs.dir/74/files/2020/03/Awesome-DL-002.jpg'),
                ],
              ),
            ),
            Text('Filter in Blue on top '),
            Image.network(
                'https://wree-fm.sagacom.com/wp-content/blogs.dir/74/files/2020/03/Awesome-DL-002.jpg')
          ],
        ),
      ),
```

