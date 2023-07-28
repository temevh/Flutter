import 'package:flutter/material.dart';

class SummaryText extends StatelessWidget {
  const SummaryText({
    Key? key,
    required this.header,
    required this.correctAnswer,
    required this.userAnswer,
  }) : super(key: key);

  final String header;
  final String correctAnswer;
  final String userAnswer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              header,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 3),
            Text(
              userAnswer,
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.start,
            ),
            Text(
              correctAnswer,
              style: const TextStyle(color: Color.fromARGB(255, 238, 255, 0)),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
