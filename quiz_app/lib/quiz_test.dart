import 'package:flutter/material.dart';
import 'package:quiz_app/buttonstyle.dart';
import 'package:quiz_app/data/question.dart';

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
    
    final currentQuestion=questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white, fontSize: 28),
          ),
          const SizedBox(
            height: 20,
          ),
          Buttonstyle(
            answertext: currentQuestion.answer[0],
            ontap: () {},
          ),
          Buttonstyle(
            answertext: currentQuestion.answer[1],
            ontap: () {},
          ),
          Buttonstyle(
            answertext: currentQuestion.answer[2],
            ontap: () {},
          ),
          Buttonstyle(
            answertext: currentQuestion.answer[3],
            ontap: () {},
          ),
        ],
      ),
    );
  }
}
