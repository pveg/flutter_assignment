import 'package:flutter/material.dart';
import './text_control.dart';

void main() => runApp(MyNewApp());

class MyNewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyNewAppState();
}

class _MyNewAppState extends State<MyNewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('First Assignment App'),
        backgroundColor: Colors.blue[100],
      ),
      body: TextControl(),
    ));
  }
}
