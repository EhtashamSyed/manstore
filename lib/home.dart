import 'package:flutter/material.dart';
import 'package:manstore/userprofile.dart';
import 'package:flutter/cupertino.dart';

import 'iteamlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_shopping_cart)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.red,
              ),
              accountName: const Text(
                'Ehtasham Syed',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              accountEmail: const Text(
                'Ali@gmail.com',
                style: TextStyle(fontSize: 15),
              ),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()));
                },
                child: const CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage('assets/images/profile.jpg'),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.red,
              ),
              title: Text(
                'My account',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.add_to_photos_rounded,
                color: Colors.red,
              ),
              title: Text(
                'My order',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.work_outline_rounded,
                color: Colors.red,
              ),
              title: Text(
                'New Deals',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.red,
              ),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.payments,
                color: Colors.red,
              ),
              title: Text(
                'Payments',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.red,
              ),
              title: Text(
                'Info',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.insert_invitation,
                color: Colors.red,
              ),
              title: Text(
                'Invite a friend',
                style: TextStyle(fontSize: 20),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: const [
                IteamList(img: 'assets/images/shose.png', name: 'Full Leather', location: 'safekoy turkey istanbul', price: '\$90',),
                IteamList(img: 'assets/images/snakers.png', name: 'Sneakers', location: 'safekoy turkey istanbul', price: '\$40')
              ],
            ),
            Row(
              children: const [
                IteamList(img: 'assets/images/skinyfit.png', name: 'SkinyFit', location: 'safekoy turkey istanbul', price: '\$35',),
                IteamList(img: 'assets/images/slimfit.png', name: 'SlimFit', location: 'safekoy turkey istanbul', price: '\$60'),
              ],
            ),
            Row(
              children: const [
                IteamList(img: 'assets/images/shirt.png', name: 'Cotton Shirts', location: 'safekoy turkey istanbul', price: '\$20',),
                IteamList(img: 'assets/images/tshirt.png', name: 'Shirts', location: 'safekoy turkey istanbul', price: '\$10')
              ],
            ),
          ],
        ),
      ),
    );
  }
}


