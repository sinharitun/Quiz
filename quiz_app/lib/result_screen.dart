import 'package:flutter/material.dart';

class result_screen extends StatelessWidget{

  Widget build(context){
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered x out Y question correctly"),
            SizedBox(height: 30,),
            Text("Scrollable container"),
            SizedBox(height: 30,),
            TextButton(onPressed: () {}, child: Text('Restart Quiz'))
          ],
        ),
      ),
    ); 
  }
}