import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handleAnswer;
  final String answerText;

  const Answer({
    super.key,
    required this.handleAnswer,
    required this.answerText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handleAnswer,
        // style: const ButtonStyle(
        //   backgroundColor: MaterialStatePropertyAll(Colors.blue),
        // ),
        child: Text(answerText),
      ),
    );
  }
}
