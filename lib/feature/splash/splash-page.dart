import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kotaawan/feature/login/login-page-alt.dart';
import 'package:kotaawan/feature/login/login-page.dart';
import 'package:kotaawan/feature/main/main-page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:http/http.dart' as http;

class SplashPage extends StatefulWidget {

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Future<http.Response> fetchToken() async {
    prefs = await SharedPreferences.getInstance();
    final response = await http.get(
      'https://dealer.kotaawan.com/ajax/gettoken',
    );
    final responseJson = jsonDecode(response.body);
    prefs.setString("tokenID",responseJson["tokenID"]);
    sessionID = prefs.getString("SessionID");
    print(responseJson);
  }

  SharedPreferences prefs;
  String sessionID;
  String email;

  @override
  void initState() {
    fetchToken();
    getSessionID();
    super.initState();
  }

  getSessionID() async {
    prefs = await SharedPreferences.getInstance();
    // final response = await http.get(
    //   'https://dealer.kotaawan.com/ajax/gettoken',
    // );
    // final responseJson = jsonDecode(response.body);
    // prefs.setString("tokenID",responseJson["tokenID"]);
    sessionID = prefs.getString("SessionID");
    email = prefs.getString("email");
    print(sessionID);
    // print(responseJson);
  }

  @override
  Widget build(BuildContext context) {


    print("ini splash page");
    print(fetchToken());

    return new SplashScreen(
        seconds: 10,
        navigateAfterSeconds: sessionID == null? LoginPage(): MainPage(email: email,),
        title: new Text('Welcome In Honda Mobile Apps',
          style: new TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),),
        image: new Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Honda_Logo.svg/2000px-Honda_Logo.svg.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Kotaawan"),
        loaderColor: Colors.red
    );
  }
}
