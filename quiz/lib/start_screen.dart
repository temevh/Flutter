import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartSceen extends StatelessWidget {
  const StartSceen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            "Learn Flutter the fun way",
            style: GoogleFonts.lato(fontSize: 28, color: Colors.white),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text("Start quiz"),
          ),
        ],
      ),
    );
  }
}
