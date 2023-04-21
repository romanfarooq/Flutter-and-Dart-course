import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  const Result({
    super.key,
    required this.totalScore,
    required this.resetQuiz,
  });

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = 'Good !!! your score is $totalScore';
    } else if (totalScore <= 12) {
      resultText = 'Great !!! your score is $totalScore';
    } else if (totalScore <= 16) {
      resultText = 'Amazing !!! your score is $totalScore';
    } else {
      resultText = 'Perfect !!! your score is $totalScore';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text('Restart Quiz!'),
          ),
        ],
      ),
    );
  }
}
