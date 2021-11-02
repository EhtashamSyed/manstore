import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:   [
              const SizedBox(height: 40,),
              Hero(
                  tag: 'logo',
                  child: Image.asset('assets/images/logo.png',height: 200,width: 200,)),
              const SizedBox(height: 10,),
              const Text('Welcome to Sign Up',style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),),
              const SizedBox(height: 10,),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child:  TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                    hintText: 'Enter Your Email',
                    alignLabelWithHint: true,
                    hintStyle: TextStyle(color:Colors.black,fontSize: 17),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.blueGrey,
                    ),
                    suffixIcon: Icon(
                      Icons.check_circle,
                      color: Colors.red,
                    ),


                  ),

                ),
              ),

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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                child:  TextField(
                  decoration: InputDecoration(
                    labelText: 'Re-enter Your Password',
                    labelStyle: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
                    hintText: 'Confirm Your Password',
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
              //const SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => const HomeScreen ()));
              },
                child: const Text('Submit',
                  style: TextStyle(fontSize: 20 ),),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(140, 50),
                    padding: const EdgeInsets.all(10),
                    primary:  Colors.red,
                    shape:  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),
              const SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text("Already have an account?",style: TextStyle(fontSize: 18),),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => const LoginScreen()));
                  },
                      child: const Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
                ],
              )
            ],
          ),
        )
    );
  }
}
