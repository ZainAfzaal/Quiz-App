import 'package:flutter/material.dart';
import 'package:my_second_app/start_screen.dart';
import 'package:my_second_app/question_screen.dart';
import 'package:my_second_app/data/questions.dart';
import 'package:my_second_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  Widget? activescreen;

  @override
  void initState() {
    activescreen = StartScreen(switchscreen);
    super.initState();
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        activescreen = ResultScreen(
          chosenAnswer: selectedAnswer,
          onRestart: restartQuiz,
        );
      });
    }
  }

  void switchscreen() {
    setState(() {
      activescreen = QuestionScreen(
        onselectAnswer: chooseAnswer,
      );
    });
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activescreen = QuestionScreen(
        onselectAnswer: chooseAnswer,
      );
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(234, 65, 33, 7),
                Color.fromARGB(234, 60, 57, 4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activescreen,
        ),
      ),
    );
  }
}
