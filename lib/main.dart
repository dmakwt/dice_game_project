import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int randomNumber1 = 4;

  int randomNumber2 = 3;

  void play() {
    var random = Random();
    int randomNumber =
        random.nextInt(6) + 1; // Generates a number between 1 and 6

    int randNum2 = random.nextInt(6) + 1; // Generates a number between 1 and 6

    randomNumber1 = randomNumber;
    randomNumber2 = randNum2;

    print("Random#1: $randomNumber1");
    print("Random#2: $randomNumber2");

    setState(() {});
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "لعبة النرد",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                play();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "images/dice_$randomNumber1.png",
                    height: 120,
                    width: 120,
                  ),
                  Container(
                    width: 30,
                  ),
                  Image.asset(
                    'images/dice_$randomNumber2.png',
                    height: 120,
                    width: 120,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100),
              child: ElevatedButton(
                child: Text(
                  "Play",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  play();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
