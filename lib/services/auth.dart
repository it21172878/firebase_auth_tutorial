import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  // Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Sing in anonymous
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (err) {
      print(err.toString());
      return null;
    }
  }

  // Register using email and password
  // Sign in using email and password
  // Sign in using gmail
  // Sign out
}
