import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo Hero'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Hero Detail Page'),
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      color: Colors.lightBlueAccent,
                      child: Hero(
                        tag: "tag",
                        child: Image.network(
                            'https://keyword-hero.com/wp-content/uploads/2017/04/Cart-Hero.png'),
                      ),
                    ),
                  );
                },
              ),
            );
          },
          child: Hero(
            tag: "tag",
            child: SizedBox(
              width: 100.0,
              child: Image.network(
                  'https://keyword-hero.com/wp-content/uploads/2017/04/Cart-Hero.png'),
            ),
          ),
        ),
      ),
    );
  }
}
