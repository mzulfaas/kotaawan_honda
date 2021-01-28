import 'package:easy_alert/easy_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kotaawan/feature/login/login-page.dart';
import 'domain/authentication-service.dart';
import 'feature/login/login-page-alt.dart';
import 'feature/main/home/home-page.dart';
import 'feature/main/main-page.dart';
import 'feature/splash/splash-page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KotaAwan Honda',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
      // home: SplashPage(),
    );
  }
}

