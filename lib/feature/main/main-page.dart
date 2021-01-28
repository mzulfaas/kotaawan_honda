import 'package:flutter/material.dart';
import 'cart/cart-page.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/main/chat/chat-page.dart';
import 'package:kotaawan/feature/main/home/home-page.dart';
import 'package:kotaawan/feature/main/profile/profile-page.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/main/notification/notification-page.dart';
import 'file:///C:/Users/Zulfa/Documents/Android%20Studio%20Project/kotaawan/lib/feature/main/setting/setting-page.dart';

class MainPage extends StatefulWidget {
  String email;
  MainPage({Key key, this.email}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MainPageState extends State<MainPage> {
  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {

    final List pages = [
      HomePage(email: widget.email,),
      SettingPage(),
      NotificationPage(),
      ChatPage(),
      CartPage(),
      ProfilePage(),
    ];

    print("Ini bottom nav");
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            elevation: 50,
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
