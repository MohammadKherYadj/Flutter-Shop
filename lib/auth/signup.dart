// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

String? username, email, password;
GlobalKey<FormState> formstate = GlobalKey<FormState>();
var formdate = formstate.currentState!;
bool seePassword = false;

bool send() {
  if (formdate.validate()) {
    formdate.save();
    print(" User Name : $username \n Email : $email \n Password : $password");
    return true;
  } else {
    print("Not Valid");
    return false;
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 50,
                  ),
                ),
                Image.asset("images/signup_background.png"),
                Form(
                  key: formstate,
                  child: Column(children: [
                    Container(
                      margin: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 30),
                      child: TextFormField(
                        onSaved: (text) {
                          username = text;
                        },
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                        },
                        decoration: InputDecoration(
                          labelText: "User Name",
                          labelStyle: const TextStyle(color: Colors.black),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: TextFormField(
                        onSaved: (text) {
                          email = text;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: const TextStyle(color: Colors.black),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 30),
                      child: TextFormField(
                        onSaved: (text) {
                          password = text;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Empty Field";
                          }
                          if (value.length < 8) {}
                        },
                        obscureText: seePassword,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.remove_red_eye,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                seePassword = !seePassword;
                              });
                            },
                          ),
                          labelText: "Password",
                          labelStyle: const TextStyle(color: Colors.black),
                          disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("I have account"),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  decoration: TextDecoration.underline),
                            ),
                            onTap: () {
                              Navigator.pushNamed(context, "login");
                            },
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (send()) {
                          Navigator.pushReplacementNamed(context, "home");
                        } else {}
                      },
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          side: const BorderSide(
                            color: Colors.black,
                          ),
                          primary: Colors.white),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.black),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
