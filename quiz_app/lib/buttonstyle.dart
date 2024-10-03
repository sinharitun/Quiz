import 'package:flutter/material.dart';

class Buttonstyle extends StatelessWidget {
  const Buttonstyle({super.key, required this.answertext, required this.ontap});

  final String answertext;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: const Color.fromARGB(255, 9, 2, 159),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(answertext,textAlign: TextAlign.center,),
    );
  }
}
