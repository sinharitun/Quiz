import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/question_summary.dart';

class result_screen extends StatelessWidget {
  result_screen({
    super.key,
    required this.choosenAnswer,
  });

  final List<String> choosenAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add({
        'questionIndex': i,
        'question': questions[i].text,
        'correctAnswer': questions[i].answer[0],
        'userAnswer': choosenAnswer[i],
      });
    }
    return summary;
  }

  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestion = questions.length;
    final numCorrectQuestion = summaryData.where(
      (data) {
        return data['userAnswer'] == data['correctAnswer'];
      },
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Text(
              "You answered $numCorrectQuestion out $numTotalQuestion question correctly",
              style: GoogleFonts.poppins(color: const Color.fromARGB(255, 246, 200, 242),fontSize: 20,),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            QuestionSummary(
              summaryData,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton.icon(
              
              icon: const Icon(Icons.restart_alt_rounded),
              label: Text('Restart Quiz',style: TextStyle(fontSize: 18),),
              style: TextButton.styleFrom(foregroundColor: Color.fromARGB(255, 246, 200, 242)),
              onPressed: () {},
              
            )
          ],
        ),
      ),
    );
  }
}
