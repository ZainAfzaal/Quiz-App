import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startquiz, {super.key});

  final void Function() startquiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/pak-pic.png',
            width: 300,
          ),
          const SizedBox(height: 30),
          const Text(
            'General Knowledge of Pakistan!',
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          OutlinedButton(
            onPressed: startquiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            child: const Text("Start Quiz"),
          )
        ],
      ),
    );
  }
}
