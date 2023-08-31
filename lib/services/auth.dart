import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth_tutorial/models/UserModel.dart';

class AuthServices {
  // Firebase instance
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create a user from firebase user wit uid
  UserModel? _userWithFirebaseUserUid(User? user) {
    return user != null ? UserModel(uid: user.uid) : null;
  }

  // Sing in anonymous
  Future signInAnonymously() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _userWithFirebaseUserUid(user);
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
