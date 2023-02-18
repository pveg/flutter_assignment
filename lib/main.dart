import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('First Assignment App'),
        backgroundColor: Colors.blue[100],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         const Text('Click the button below!', style: TextStyle(fontSize: 32), textAlign: TextAlign.center,),
          ElevatedButton(onPressed: () => {}, child: const Text('Cool App')),
        ],
      )),
    ));
  }
}
