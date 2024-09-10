import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton.icon(
              icon: const Icon(Icons.quiz),
              // style: ButtonStyle(
              // ),
              onPressed: () {},
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
