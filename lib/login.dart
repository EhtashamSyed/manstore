import 'package:flutter/material.dart';
import 'package:manstore/signup.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children:   [
            const SizedBox(height: 50,),
            Hero(
                tag: 'logo',
                child: Image.asset('assets/images/logo.png',height: 200,width: 200,)),
            const SizedBox(height: 20,),
            const Text('Welcome to Sign In',style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
            const SizedBox(height: 20,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  labelStyle: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Enter Your Name',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color:Colors.black,fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  prefixIcon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.check_circle,
                    color: Colors.red,
                  ),


                ),

              ),
            ),
            const SizedBox(height: 1,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
              child:  TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                  hintText: 'Enter Your Password',
                  alignLabelWithHint: true,
                  hintStyle: TextStyle(color:Colors.black,fontSize: 17),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blueGrey,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility,
                    color: Colors.red,
                  ),


                ),

              ),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen ()));
            },
              child: const Text('Login',
                style: TextStyle(fontSize: 20 ),),
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(110, 50),
                  padding: const EdgeInsets.all(10),
                  primary:  Colors.red,
                  shape:  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const Text("Don't have an account",style: TextStyle(fontSize: 18),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignupScreen()));
                },
                    child: const Text('Signup',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
