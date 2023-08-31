import 'package:firebase_auth_tutorial/screens/authentication/sign_in.dart';
// import 'package:firebase_auth_tutorial/screens/authentication/register.dart';
import 'package:flutter/material.dart';

class Athenticate extends StatefulWidget {
  const Athenticate({super.key});

  @override
  State<Athenticate> createState() => _AthenticateState();
}

class _AthenticateState extends State<Athenticate> {
  @override
  Widget build(BuildContext context) {
    return SignIn();
  }
}
