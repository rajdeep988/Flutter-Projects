import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class textcontroller extends StatelessWidget {
  final int _messageIndex;
  final VoidCallback _updateMessage;
  final List<String> messages;

  textcontroller(this._messageIndex, this._updateMessage, this.messages);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          messages[_messageIndex],
          style: TextStyle(
              fontSize: 38, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
            onPressed: _updateMessage,
            child: Text('Wanna Change? Click me!'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                Color.fromARGB(255, 69, 0, 82),
              ),
            ))
      ]),
    );
  }
}
