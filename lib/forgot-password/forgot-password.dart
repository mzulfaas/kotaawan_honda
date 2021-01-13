import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {

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
                "Forgot Password",
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
                    hintText: 'No HP',
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
                    // if (_formKey.currentState.validate()) {
                    //   SignInSignUpResult result = await AuthenticationService.signInWithEmail(
                    //       email: _emailController.text, pass: _passController.text);
                    //
                    //   if (result.user != null) {
                    //     print("ini button login");
                    //     // Go to Profile Page
                    //     Navigator.push(
                    //         context,
                    //         MaterialPageRoute(
                    //             builder: (context) => MainPage(
                    //               user: result.user,
                    //             )));
                    //   } else {
                    //     // Show Dialog
                    //     showDialog(
                    //         context: context,
                    //         builder: (context) => AlertDialog(
                    //           title: Text('Error'),
                    //           content: Text(result.message),
                    //           actions: <Widget>[
                    //             FlatButton(
                    //               onPressed: () {
                    //                 Navigator.pop(context);
                    //               },
                    //               child: Text('OK'),
                    //             )
                    //           ],
                    //         ));
                    //   }
                    // }
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
            ],
          ),
        ),
      ),
    );
  }
}
