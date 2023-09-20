import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/page/home_Screen.dart';
import 'auth/login.dart';
import 'auth/signup.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        "home": (context) => const HomeScren(),
        "login": (context) => const Login(),
        "Signup": (context) => const SignUp(),
      },
    );
  }
}
