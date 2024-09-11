import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyApp extends StatelessWidget {
  const MyApp(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 280,
            width: 250,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  opacity: 0.5,
                  image: AssetImage("lib/assets/assets/images/quiz-logo.png"),
                  fit: BoxFit.fill),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
              fontSize: 22,
              color: const Color.fromARGB(255, 221, 158, 158),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              icon: const Icon(Icons.quiz),
              // style: ButtonStyle(
              // ),
              onPressed: startQuiz,
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              ))
        ]),
      ),
    );
  }
}
