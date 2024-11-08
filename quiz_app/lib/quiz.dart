import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';
import 'package:quiz_app/main_screen.dart';
import 'package:quiz_app/quiz_test.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key}); //constructor function
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? activestate;

  List<String> selectAnswer=[];


  @override
  void initState() {
    activestate = MainScreen(switchactive);
    super.initState();
  }
  
  void restartIt(){
    setState(() {
      selectAnswer=[];
      activestate = QuizTest(onSelectAnswer: chooseAnswer,);
    });
  }
  void chooseAnswer(String answer)
  {
    selectAnswer.add(answer);

    if(selectAnswer.length == questions.length){
      setState(() {
        // selectAnswer=[];
        activestate = result_screen(choosenAnswer: selectAnswer,restartIt: restartIt);
        
      });
    }
  }

  void switchactive() {
    setState(() {
      activestate = QuizTest(onSelectAnswer: chooseAnswer,);
    }); 
  } 

  

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 28, 21, 233),
          title: Title(
              color: Colors.white,
              child: Center(
                child: Text(
                  'QUIZ',
                  
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 28, 21, 233),
              Color.fromARGB(210, 94, 7, 186),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: activestate,
        ),
      ),
    );
  }
}
