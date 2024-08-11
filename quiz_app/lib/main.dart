import 'package:flutter/material.dart';

void onPressed() {}
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 148, 21, 233),
            Color.fromARGB(210, 94, 7, 186),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 250,
              ),
              const SizedBox(height: 60),
              const Text(
                'Learn Flutter in Fun Way',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              const OutlinedButton(
                onPressed: onPressed,
                child: Text(
                  'Start Quiz',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    ),
  ));
}
