import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(bottom: 10),
                      padding: EdgeInsets.all(10),
                      width: 37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          color: const Color.fromARGB(255, 247, 103, 250)),
                      child: Center(
                        
                        child: Text(
                          ((data['questionIndex'] as int) + 1).toString(),
                          style: TextStyle(fontWeight: FontWeight.bold, ),
                        ),
                      )),
                  Expanded(
                    
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Text(
                            data['question'] as String,
                            style: TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['userAnswer'] as String,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 175, 93, 190)),
                          ),
                          Text(
                            data['correctAnswer'] as String,
                            style: TextStyle(
                                color: const Color.fromARGB(255, 62, 166, 232)),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
