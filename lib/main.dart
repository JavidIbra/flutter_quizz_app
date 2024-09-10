import 'package:flutter/material.dart';
import 'package:flutter_quizz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const MyApp(),
        ),
      ),
    ),
  );
}
