import 'package:flutter/material.dart';

void main() => runApp(MyNewApp());

class MyNewApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyNewAppState();
}

class _MyNewAppState extends State<MyNewApp> {
  static const _buttonText = [
    'If you click',
    'I change',
    'Try another time',
    'Keep clicking',
    'Maybe'
  ];

  var _phraseIndex = 0;

  void _changeButtonText() => {
        setState(() {
          _phraseIndex++;
        }),
        if(_phraseIndex >= _buttonText.length){
          _phraseIndex = 0
        }
      };

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
          const Text(
            'Click the button below!',
            style: TextStyle(fontSize: 32),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: () => {_changeButtonText()},
              child: Text(_buttonText[_phraseIndex])),
        ],
      )),
    ));
  }
}
