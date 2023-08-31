import 'package:firebase_auth_tutorial/screens/authentication/authenticate.dart';
import 'package:firebase_auth_tutorial/screens/home/home.dart';
import 'package:flutter/material.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Athenticate(),
    );
  }
}
