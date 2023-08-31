import 'package:flutter/material.dart';

import '../../services/auth.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
// ref for the AuthServices class
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SIGN IN"),
      ),
      body: ElevatedButton(
        child: const Text("Sing in Anonymously"),
        onPressed: () async {
          dynamic result = await _auth.signInAnonymously();
          if (result == Null) {
            print("error sign in as anonymously");
          } else {
            print("signed annonymous");
            print(result.uid);
          }
        },
      ),
    );
  }
}
