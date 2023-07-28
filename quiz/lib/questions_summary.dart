import 'package:flutter/material.dart';
import 'package:quiz/questionssummary/bubble.dart';
import 'package:quiz/questionssummary/summarytext.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Column(
              children: [
                Row(
                  children: [
                    Bubble(
                      number: ((data['question_index'] as int) + 1).toString(),
                      correct: data['user_answer'] == data['correct_answer'],
                    ),
                    SummaryText(
                      header: data['question'] as String,
                      correctAnswer: data['correct_answer'] as String,
                      userAnswer: (data['user_answer']) as String,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
