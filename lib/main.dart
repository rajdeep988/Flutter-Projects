// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import 'package:flutter_assignment/text.dart';
import 'package:flutter_assignment/textControl.dart';
// ignore_for_file: prefer_const_constructors

void main() => runApp(ForChange());

class ForChange extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ForChangeState();
}

class _ForChangeState extends State<ForChange> {
  int _messageIndex = 0;

  void _updateMessage() {
    setState(() {
      _messageIndex += 1;
    });
  }

  final messages = const [
    'I\'m a tiger',
    'No I\'m a ... lion?',
    'idk',
    'May be I\'m a burger or pizza'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black26,
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 63, 0, 74),
            title: Text('It will Change'),
          ),
          body: _messageIndex < messages.length
              ? textcontroller(_messageIndex, _updateMessage, messages)
              : textgen()),
    );
  }
}
