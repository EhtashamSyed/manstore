import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:manstore/signup.dart';

import 'login.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            DefaultTextStyle(
              style: const TextStyle(
                  fontSize: 30, color: Colors.black, fontFamily: 'VarelaRound'),
              child: AnimatedTextKit(
                animatedTexts: [
                  //ScaleAnimatedText("Welcome To Men's Store"),
                  TyperAnimatedText("Welcome to Men's Store"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Hero(tag: 'logo', child: Image.asset('assets/images/logo.png')),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 50),
                      padding: const EdgeInsets.all(10),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupScreen()));
                  },
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(130, 50),
                      padding: const EdgeInsets.all(10),
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
