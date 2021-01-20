import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:kotaawan/domain/authentication-service.dart';
import 'package:kotaawan/feature/main/main-page.dart';
import 'package:kotaawan/feature/main/profile/profile-page.dart';
import 'package:kotaawan/feature/register/register-page-alt.dart';
import 'package:kotaawan/feature/register/register-page.dart';
import 'package:kotaawan/forgot-password/forgot-password.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  String txtMsg = '';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  Future<List> processLogin(String email, String password) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var tokenID = prefs.getString("tokenID");
    var jsonLogin = await http.post(
        "https://dealer.kotaawan.com/ajax/getlogin/${tokenID}/${email}/${password}");
    // print(jsonLogin);
        // "https://dealer.kotaawan.com/ajax/getlogin/12345${responseJson['tokenID']}/${_emailController.text}/${_passController.text}");
        // "https://istana.kotaawan.com/api/login/${_emailController.text}/${_passController.text}");
    var dataLogin = json.decode(jsonLogin.body);

    if (dataLogin['status'] == 1 ) {
      print("ini button login");
      prefs.setString("SessionID", dataLogin['sessionID']);
      prefs.setString("email", email);
      // Go to Profile Page
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MainPage(
                email: email,
              )));
    } else {
      // Show Dialog
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Error'),
            content: Text("Gagal Login"),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('OK'),
              )
            ],
          ));
    }
    setState(() {
      txtMsg = dataLogin['status'].toString();
    });
    print(dataLogin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // key: _formKey,
        child: Form(
          key: _formKey,
          child: ListView(
            // key: _formKey,
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget> [
              Container(
                child: Image.asset('assets/images/ahass-logo.png'),
              ),
              // SizedBox(height: 20,),
              Text(
                "LOGIN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
                child: TextFormField(
                  controller: _emailController,
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.emailAddress,
                  autofocus: false,
                  decoration: InputDecoration(
                  hintText: 'Email',
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.fromLTRB(45, 0, 45, 0),
                child: TextFormField(
                  controller: _passController,
                  textAlign: TextAlign.center,
                  autofocus: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                child: RaisedButton(
                  color: Colors.red,
                  onPressed: () async{
                    if (_formKey.currentState.validate()) {
                      print("Ini proses login");
                      processLogin(_emailController.text, _passController.text);
                      // SignInSignUpResult result = await AuthenticationService.signInWithEmail
                      //   (
                          // email: _emailController.text, pass: _passController.text);
                      bool isSuccessLogin = true;
                    }
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                  );
                },
                child: Text("Lupa Password >>",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  ),
                textAlign: TextAlign.right,),
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  "Registrasi >>",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
