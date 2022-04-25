import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String ques;
  final int i;
  Question(this.ques, this.i);
  late String quess = '${i + 1}.' + ques;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 0, 212, 127),
      margin: EdgeInsets.all(10),
      child: Text(
        quess,
        style: TextStyle(
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
