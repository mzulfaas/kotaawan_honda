import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static FirebaseAuth _auth = FirebaseAuth.instance;


  // create Account
  static Future<SignInSignUpResult> createUser({String email, String pass, String confpass, String noHP, String referral, }) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult(user: result.user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

  // sign in with email/password
  static Future<SignInSignUpResult> signInWithEmail({String email, String pass}) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: pass);
      return SignInSignUpResult(user: result.user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString());
    }
  }

  // sign out
  static void signOut() {
    _auth.signOut();
  }

}

class SignInSignUpResult {
  final FirebaseUser user;
  final String message;

  SignInSignUpResult({this.user, this.message});
}