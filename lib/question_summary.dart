import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      color: e["your_answer"] != e["correct_answer"]
                          ? Colors.pink[300]
                          : Colors.blue[300],
                    ),
                    margin: const EdgeInsets.only(right: 15),
                    child: Center(
                        child: Text(
                            ((e['question_index'] as int) + 1).toString()))),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e["question"] as String,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        e["your_answer"] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 194, 64, 255)),
                      ),
                      Text(
                        e["correct_answer"] as String,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 99, 64, 255)),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
