import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/screens/questions_screen.dart';
import 'package:flutter_quizz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;

  @override
  void initState() {
    activeScreen = MyApp(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 76, 13, 151),
                Color.fromARGB(255, 114, 48, 230),
              ],
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
