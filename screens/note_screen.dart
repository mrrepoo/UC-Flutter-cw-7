import 'package:flutter/material.dart';


class Note extends StatelessWidget {
  const Note({Key? key, required this.text, required this.bgColor})
      : super(key: key);

  final text;
  final bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('دفتر اليوميات', )
      ),
      body: Container(
        color: Color(bgColor),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
