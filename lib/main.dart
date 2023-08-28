import 'package:flutter/material.dart';

import 'auth/login.dart';
import 'auth/signup.dart';
import 'homepage.dart';

void main(List<String> args) {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Login(),
      routes: {
        "home":(context) => const HomePage(),
        "login":(context) => const Login(),
        "Signup":(context) => const SignUp()
      },

    );
  }
}
