import 'package:flutter/material.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/quiz_test.dart';




class Quiz extends StatefulWidget{

  const Quiz({super.key});
  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  Widget? activestate;

  @override
  void initState() {
    activestate=MainScreen(switchactive);
    super.initState();
  }
void switchactive (){
  setState(() {
    activestate=const QuizTest();
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold( 
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 28, 21, 233),
            Color.fromARGB(210, 94, 7, 186),
          ],
          begin: Alignment.topLeft, 
          end: Alignment.bottomRight),
          
        ),
        child: activestate ,
      ),
    ),
  );
  }

}