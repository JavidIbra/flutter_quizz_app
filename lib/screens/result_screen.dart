import 'package:flutter/widgets.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("You answered x out y question correctly")],
        ),
      ),
    );
  }
}
