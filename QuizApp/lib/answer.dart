// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ans;
  final VoidCallback select;
  Answer(this.select, this.ans);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.deepPurple,
          child: Text(
            ans,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: select),
    );
  }
}
