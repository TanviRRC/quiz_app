import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(
      {super.key,
      required this.questionIndex,
      required this.isAnsweredCorrect});

  final int questionIndex;
  final bool isAnsweredCorrect;

  @override
  Widget build(BuildContext context) {
    final int questionNumber = questionIndex + 1;
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: isAnsweredCorrect ? Colors.greenAccent : Colors.red,
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(
        questionNumber.toString(),
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
    );
  }
}
