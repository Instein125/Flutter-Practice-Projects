import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main(List<String> args) {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = List.generate(10, (index) => index)..shuffle();
  int i = 0;
  int _totalScore = 0;
  void _answerQues(int score) {
    _totalScore += score;
    setState(() {
      i++;
    });
  }

  void _resart() {
    setState(() {
      i = 0;
      _totalScore = 0;
      _quesIndex = List.generate(10, (index) => index)..shuffle();
    });
  }

  final _questions = const [
    {
      'question':
          'Brass gets discoloured in air because of the presence of which of the following gases in air?',
      'answer': [
        {
          'ans': 'A.	Oxygen',
          'score': 0,
        },
        {
          'ans': 'B.	Hydrogen sulphide',
          'score': 5,
        },
        {
          'ans': 'C.	Carbon dioxide',
          'score': 0,
        },
        {
          'ans': 'D.	Nitrogen',
          'score': 0,
        },
      ]
    },
    {
      'question':
          'Which of the following is a non metal that remains liquid at room temperature?',
      'answer': [
        {
          'ans': 'A.	Phosphorous',
          'score': 0,
        },
        {
          'ans': 'B.	Bromine',
          'score': 5,
        },
        {
          'ans': 'C.	Chlorine',
          'score': 0,
        },
        {
          'ans': 'D.	Helium',
          'score': 0,
        },
      ]
    },
    {
      'question': 'Which of the following is used in pencils?',
      'answer': [
        {
          'ans': 'A.	Graphite',
          'score': 5,
        },
        {
          'ans': 'B.	Silicon',
          'score': 0,
        },
        {
          'ans': 'C.	Charcoa',
          'score': 0,
        },
        {
          'ans': 'D.	Phosphorous',
          'score': 0,
        },
      ]
    },
    {
      'question': 'What is actually electricity?',
      'answer': [
        {
          'ans': 'A. A flow of water',
          'score': 0,
        },
        {
          'ans': 'B. A flow of air',
          'score': 0,
        },
        {
          'ans': 'C. A flow of electrons',
          'score': 5,
        },
        {
          'ans': 'D. A flow of atoms',
          'score': 0,
        },
      ]
    },
    {
      'question': 'Which did Viking people use as money?',
      'answer': [
        {
          'ans': 'A. Rune stones',
          'score': 0,
        },
        {
          'ans': 'B. Jewellery',
          'score': 5,
        },
        {
          'ans': 'C. Seal skins',
          'score': 0,
        },
        {
          'ans': 'D. Wool',
          'score': 0,
        },
      ]
    },
    {
      'question':
          'What was the first country to use tanks in combat during World War I?',
      'answer': [
        {
          'ans': 'A. France',
          'score': 0,
        },
        {
          'ans': 'B. Japan',
          'score': 0,
        },
        {
          'ans': 'C. Britain',
          'score': 5,
        },
        {
          'ans': 'D. Germany',
          'score': 0,
        },
      ]
    },
    {
      'question': 'What is the main component of the sun?',
      'answer': [
        {
          'ans': 'A. Liquid lava',
          'score': 0,
        },
        {
          'ans': 'B. Gas',
          'score': 5,
        },
        {
          'ans': 'C. Molten iron',
          'score': 0,
        },
        {
          'ans': 'D. Rock',
          'score': 0,
        },
      ]
    },
    {
      'question':
          'In the series “Game of Thrones”, Winterfell is the ancestral home of which family?',
      'answer': [
        {
          'ans': 'A. The Lannisters',
          'score': 0,
        },
        {
          'ans': 'B. The Starks',
          'score': 5,
        },
        {
          'ans': 'C. The Tully\’s',
          'score': 0,
        },
        {
          'ans': 'D. The Targaryens',
          'score': 0,
        },
      ]
    },
    {
      'question': 'Which company is known for publishing the Mario video game?',
      'answer': [
        {
          'ans': 'A. Xbox',
          'score': 0,
        },
        {
          'ans': 'B. Electronic Arts',
          'score': 0,
        },
        {
          'ans': 'C. SEGA',
          'score': 0,
        },
        {
          'ans': 'D. Nintendo',
          'score': 5,
        },
      ]
    },
    {
      'question': 'How many time zones are there in total in the world?',
      'answer': [
        {
          'ans': 'A. 8',
          'score': 0,
        },
        {
          'ans': 'B. 16',
          'score': 0,
        },
        {
          'ans': 'C. 24',
          'score': 5,
        },
        {
          'ans': 'D. 32',
          'score': 0,
        },
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test Your IQ! '),
        ),
        body: i < _questions.length
            ? Quiz(
                i: i,
                questions: _questions,
                index: _quesIndex,
                answerQ: _answerQues,
              )
            : Result(_totalScore, _resart),
      ),
    );
  }
}
