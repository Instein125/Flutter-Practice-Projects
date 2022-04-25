import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final List index;
  final int i;
  final Function answerQ;
  Quiz(
      {required this.questions,
      required this.index,
      required this.i,
      required this.answerQ});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[index[i]]['question'] as String,
          i,
        ),
        ...(questions[index[i]]['answer'] as List).map((anss) {
          return Answer(() => answerQ(anss['score']), anss['ans']);
        }).toList(),
      ],
    );
  }
}
