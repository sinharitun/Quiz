import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen(this.switchactive, {super.key});

 final Function() switchactive;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/logo.png',
            width: 250,
            color: const Color.fromARGB(214, 252, 252, 252),
          ),
          const SizedBox(height: 60),
          const Text(
            'Learn Flutter in Fun Way',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: switchactive,
            icon: const Icon(Icons.arrow_back_sharp),
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: const Text(
              'Start Quiz',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
