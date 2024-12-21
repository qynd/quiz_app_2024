import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.startQuiz, required this.profile   });

  final void Function() startQuiz;
  final void Function() profile;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.3,
            child: Image.asset('assets/images/quiz-logo.png'),
          ),
          const SizedBox(
            height: 20
            ),
          const Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
            ),
          ),
          const Text(
            'Praktikum Mobile 5O',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: startQuiz,
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.deepPurple,
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Start Quiz'),
              ],
            ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple),
              onPressed: profile,
              child: const Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.arrow_right_alt),
                SizedBox(
                  width: 8,
                ),
                Text('Profile')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
