import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
              child: Image.network(
                // Image URL
                // Also you  can use gifs and svg images
                  "https://avatars.githubusercontent.com/u/81336230?v=4",
              // fit is used to set the image fit in the container
              fit: BoxFit.fill,
              height: 200,
              width: 500,
              )),
        ),
      ),
    );
  }
}
