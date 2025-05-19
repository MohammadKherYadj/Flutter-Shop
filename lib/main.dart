import 'package:flutter/material.dart';
import 'package:shop/auth/Homepage/Admin%20Home%20Pages/admin_homepage.dart';
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
      theme: ThemeData(
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black)))),
      routes: {
        "home": (context) => const HomeScren(),
        "login": (context) => const Login(),
        "signup": (context) => const SignUp(),
        "adminPage": (context) => const AdminHomePage()
      },
    );
  }
}
