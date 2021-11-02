import 'dart:async';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:manstore/welcome.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ManStore(),
  ));
}

class ManStore extends StatefulWidget {
  const ManStore({Key? key}) : super(key: key);

  @override
  _ManStoreState createState() => _ManStoreState();
}

class _ManStoreState extends State<ManStore> {
  @override
  void initState() {
    Timer(const Duration(seconds: 8), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const WelcomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              Hero(tag: 'logo', child: Image.asset('assets/images/logo.png')),
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'VarelaRound'),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("Men's Store"),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
