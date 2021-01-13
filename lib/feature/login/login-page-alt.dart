import 'package:flutter/material.dart';
import 'package:kotaawan/domain/authentication-service.dart';
import 'package:kotaawan/feature/main/main-page.dart';
import 'package:kotaawan/feature/main/profile/profile-page.dart';
import 'package:kotaawan/feature/register/register-page-alt.dart';
import 'package:kotaawan/feature/register/register-page.dart';
import 'package:kotaawan/forgot-password/forgot-password.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                      SignInSignUpResult result = await AuthenticationService.signInWithEmail(
                          email: _emailController.text, pass: _passController.text);

                      if (result.user != null) {
                        print("ini button login");
                        // Go to Profile Page
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainPage(
                                  user: result.user,
                                )));
                      } else {
                        // Show Dialog
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Error'),
                              content: Text(result.message),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
