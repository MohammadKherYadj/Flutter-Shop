import 'package:flutter/material.dart';

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          ),

                          InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: const Text(
                                "forget password ?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontStyle: FontStyle.italic),
                              ),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacementNamed(context, "home");
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                                elevation: 10,
                              ),
                              child: const Text(
                                "login",
                                style: TextStyle(fontStyle: FontStyle.italic),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////widgetinput/////////////////////////////
class Textinput extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[800]),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              border: InputBorder.none,
              hintText: hint,
              labelText: "Email",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 16)),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}

///////////////////////////widgetpassword////////////////////////////////
class Passwordinput extends StatelessWidget {
  const Passwordinput({
    Key? key,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);
  final String hint;

  final TextInputAction inputAction;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.grey[800]),
        child: TextField(
          decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              border: InputBorder.none,
              hintText: hint,
              labelText: "Password",
              hintStyle: const TextStyle(color: Colors.white, fontSize: 16)),
          obscureText: true,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
