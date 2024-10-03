import 'package:flutter/material.dart';
import 'package:quiz_app/buttonstyle.dart';
import 'package:quiz_app/data/question.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizTest extends StatefulWidget {
  const QuizTest({super.key, required this .onSelectAnswer});

  final void Function(String answer) onSelectAnswer;
  @override
  State<StatefulWidget> createState() {
    return _QuizTestState();
  }
}

class _QuizTestState extends State<QuizTest> {
  var questionIndex = 0;

  void setIndexQuestion(String selectAnswer) {

    widget.onSelectAnswer(selectAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 193, 169, 241),
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ...currentQuestion.getShuffledAnswer().map((answer) {
              return Buttonstyle(
                answertext: answer,
                ontap: () {
                  setIndexQuestion(answer);
                }
              );
            })
            // Buttonstyle(
            //   answertext: currentQuestion.answer[0],
            //   ontap: () {},
            // ),
            // Buttonstyle(
            //   answertext: currentQuestion.answer[1],
            //   ontap: () {},
            // ),
            // Buttonstyle(
            //   answertext: currentQuestion.answer[2],
            //   ontap: () {},
            // ),
            // Buttonstyle(
            //   answertext: currentQuestion.answer[3],
            //   ontap: () {},
            // ),
          ],
        ),
      ),
    );
  }
}
