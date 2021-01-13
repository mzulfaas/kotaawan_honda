import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/cart/cart-page.dart';
import 'package:kotaawan/feature/chat/chat-page.dart';
import 'package:kotaawan/feature/main/home/home-page.dart';
import 'package:kotaawan/feature/main/profile/profile-page.dart';
import 'package:kotaawan/feature/notification/notification-page.dart';
import 'package:kotaawan/feature/setting/setting-page.dart';

class MainPage extends StatefulWidget {
  final FirebaseUser user;
  MainPage({Key key, this.user}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainPageState extends State<MainPage> {
  int _selectedItemIndex = 0;
  final List pages = [
    HomePage(),
    SettingPage(),
    NotificationPage(),
    ChatPage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    print("Ini bottom nav");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Color(0xFFF0F0F0),
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.red,
            selectedIconTheme: IconThemeData(color: Colors.red[600]),
            currentIndex: _selectedItemIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {  
              setState(() {
                _selectedItemIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.settings),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.email),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.shopping_cart),
              ),
              BottomNavigationBarItem(
                title: Text(""),
                icon: Icon(Icons.account_box),
              ),
            ],
          ),
          body: pages[_selectedItemIndex]
      ),
    );
  }
}
