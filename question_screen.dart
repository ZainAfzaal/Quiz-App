import 'package:flutter/material.dart';

import 'package:my_second_app/data/questions.dart';
import 'package:my_second_app/answers_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({required this.onselectAnswer, super.key});

  final void Function(String answer) onselectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionStateScreen();
  }
}

class _QuestionStateScreen extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onselectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              style: const TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              currentQuestion.text,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getshuffeled().map((answer) {
              return AnswerButton(
                answerText: answer,
                ontap: () {
                  answerQuestion(answer);
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
