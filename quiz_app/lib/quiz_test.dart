import 'package:flutter/material.dart';

class QuizTest extends StatefulWidget {
  const QuizTest({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizTestState();
  }
}

class _QuizTestState extends State<QuizTest> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("question",style: TextStyle(color: Colors.white,fontSize: 28),),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('answer1'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('answer2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('answer3'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('answer4'),
          ),
      
        ],
      ),
    );
  }
}
