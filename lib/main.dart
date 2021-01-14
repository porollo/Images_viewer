import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Image Viewer',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Image Viewer'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(100, (index) {
            return Center(
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')
            );
          }),
        ),
      ),
    );
  }
}