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
        body: const Center(
            child: IconButton(
          icon: const Icon(Icons.android),
          color: Colors.green,
          onPressed: null,
          iconSize: 100,
        )),
      ),
    );
  }
}
