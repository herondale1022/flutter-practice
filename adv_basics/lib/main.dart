import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.deepPurple,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 300.0,
                ),
                const SizedBox(height: 50.0),
                const Text(
                  'Learn Flutter the fun way!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                const SizedBox(height: 30.0),
                const OutlinedButton(
                  onPressed: null,
                  style: ButtonStyle(
                      // shape: LinearBorder(
                      //   side: BorderSide(color: Colors.black),
                      // ),
                      ),
                  child: Text(
                    'Start Quiz',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
