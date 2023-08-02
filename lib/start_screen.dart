import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.deepPurple, Color(0xFF2C1052)]),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300,
                  color: const Color(0xBFFAF9F9),
                ),
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Learn Flutter the fun way!",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: Colors.white, fontSize: 24)),
                ),
                const SizedBox(
                  height: 30,
                ),
                OutlinedButton.icon(
                    onPressed: startQuiz,
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        shape: const RoundedRectangleBorder()),
                    icon: const Icon(
                      Icons.arrow_right_alt,
                    ),
                    label: const Text(
                      "Start Quiz",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
