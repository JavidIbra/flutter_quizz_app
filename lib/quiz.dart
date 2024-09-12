import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/data/questions.dart';
import 'package:flutter_quizz_app/screens/questions_screen.dart';
import 'package:flutter_quizz_app/screens/result_screen.dart';
import 'package:flutter_quizz_app/screens/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  Widget? activeScreen;

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        // selectedAnswers = [];
        activeScreen = ResultScreen(
          onRestart: restartQuiz,
          chosenAnswers: selectedAnswers,
        );
      });
    }
  }

  @override
  void initState() {
    activeScreen = MyApp(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
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
