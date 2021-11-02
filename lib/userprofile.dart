import 'package:flutter/material.dart';
import 'package:manstore/welcome.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('User Profile'),
      ),
      body: Center(
        child: Column(
          children:   [
            const SizedBox(height: 30,),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            const SizedBox(height: 20,),
            const Text('Ehtasham Syed',style: TextStyle(fontSize: 35,
                fontWeight: FontWeight.w400,
            fontFamily: 'VarelaRound'),),
            const SizedBox(height: 20,),
            const Text('Flutter Developer',style: TextStyle(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w400,
              fontFamily: 'Cookie',
              letterSpacing: 1.5,

            ),),
            const SizedBox(height: 5,),
            const Divider(
              thickness: 1.5,
              color: Colors.blueGrey,
              indent: 80,
              endIndent: 80,
            ),
            const SizedBox(height: 5,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.phone,color: Colors.white,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('+905551039337',style: TextStyle(color: Colors.white),),

                ),
                trailing: Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.mail,color: Colors.white,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Ali@gmail.com',style: TextStyle(color: Colors.white),),

                ),
                trailing: Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.lock,color: Colors.white,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Change Password',style: TextStyle(color: Colors.white),),

                ),
                trailing: Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.settings,color: Colors.white,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Settings',style: TextStyle(color: Colors.white),),

                ),
                trailing: Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child: const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.help,color: Colors.white,),
                ),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Help & Support',style: TextStyle(color: Colors.white),),

                ),
                trailing: Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),
            const SizedBox(height: 15,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3,),
              height: 50,
              width: 280,
              decoration:  BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
              ),

              child:  ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const WelcomeScreen ()));
                },
                leading: const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.logout,color: Colors.white,),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Log Out',style: TextStyle(color: Colors.white),),

                ),
                trailing: const Padding(
                  padding:EdgeInsets.only(bottom: 8.0),
                  child: Icon(Icons.arrow_forward_ios,color: Colors.white,),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
