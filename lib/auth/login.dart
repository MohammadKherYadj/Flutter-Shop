import 'package:flutter/material.dart';
import 'package:shop/auth/signup.dart';
import 'package:shop/homepage.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/photo.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black45, BlendMode.darken))),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                // width: 50,
                // height: 40,
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 45,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Textinput(
                          inputAction: TextInputAction.next,
                          inputType: TextInputType.emailAddress,
                          hint: "Email",
                        ),
                        //////////////////////////////////////////////////////////

                        const Passwordinput(
                          inputAction: TextInputAction.done,
                          hint: "Password",
                          password: '',
                        ),

                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 20),
                              child: const Text(
                                "forget password?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: InkWell(
                                    child: const Text(
                                      "Signup",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 17,
                                          color: Colors.white),
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(context, "Signup");
                                    },
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        // Row(
                        //   children: [

                        //     // Container(
                        //     //   margin: EdgeInsets.only(right: 20),
                        //     //   padding: EdgeInsets.only(right: 20),
                        //     //   child: Text(
                        //     //     "creat account",
                        //     //     style: TextStyle(
                        //     //         color: Colors.white,
                        //     //         fontSize: 17,
                        //     //         fontStyle: FontStyle.italic),
                        //     //   ),
                        //     // ),
                        //   ],
                        // ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(),
                          padding: const EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, "home");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              elevation: 10,
                            ),
                            child: const Text(
                              "login",
                              style: TextStyle(fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 40,
                height: 40,
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "images/download.ico",
                  ),
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///////////////////////////widgetinput/////////////////////////////
class Textinput extends StatefulWidget {
  const Textinput({
    Key? key,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

  @override
  State<Textinput> createState() => _TextinputState();
}

class _TextinputState extends State<Textinput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[800]),
        child: TextFormField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              border: InputBorder.none,
              hintText: widget.hint,
              labelText: "Email",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 16)),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          keyboardType: widget.inputType,
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}

///////////////////////////widgetpassword////////////////////////////////
class Passwordinput extends StatefulWidget {
  const Passwordinput({
    Key? key,
    required this.password,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);
  final String? hint, password;

  final TextInputAction inputAction;

  @override
  State<Passwordinput> createState() => _PasswordinputState();
}

class _PasswordinputState extends State<Passwordinput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[800]),
        child: TextFormField(
          onSaved: (text) {
            password = text;
          },
          validator: (value) {
            if (value!.isEmpty) {
              return "Empty Field";
            }
            if (value.length < 8) {
              return "Password must be 8 character at less";
            }
          },
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              border: InputBorder.none,
              hintText: widget.hint,
              labelText: "Password",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 16)),
          obscureText: true,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textInputAction: widget.inputAction,
        ),
      ),
    );
  }
}
