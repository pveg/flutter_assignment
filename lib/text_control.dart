import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {

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
        if (_phraseIndex >= _buttonText.length) {_phraseIndex = 0}
      };
  @override
  Widget build(BuildContext context) {
    return Center(
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
    ));
  }
}
