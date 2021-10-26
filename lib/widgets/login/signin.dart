import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'styled_widgets.dart';

class SigninWidget extends StatefulWidget {
  const SigninWidget({Key? key}) : super(key: key);

  @override
  _SigninWidgetState createState() => _SigninWidgetState();
}

class _SigninWidgetState extends State<SigninWidget> {
  InputDecoration getDec(text) {
    InputDecoration decoration = InputDecoration(
      contentPadding: const EdgeInsets.all(25),
      isDense: true,
      filled: true,
      fillColor: Colors.grey.withOpacity(0.4),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.grey.withOpacity(0.4), width: 0.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.lightBlue, width: 1),
      ),
      labelText: text,
      labelStyle: GoogleFonts.roboto(
          fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    );
    return decoration;
  }

  final email = TextEditingController();
  final password = TextEditingController();
  List<String> list = [];

  List<String> getList(emailC, passwordC) {
    list.add(emailC.text);
    list.add(passwordC.text);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CircleContainer(400, 400, Colors.grey.withOpacity(0.8), 200, 435, 175),
          // CircleContainer(700, 700, Colors.lightBlue, 360, 130, -80),
          // CircleContainer(300, 300, Colors.white, 200, 60, -100),
          ListView(children: [
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Column(children: [
                      TextWidget("Welcome Back"),
                    ]),
                    Column(
                      children: [
                        TextFieldWidget(
                          TextField(
                            controller: email,
                            decoration: getDec("Your Email"),
                          ),
                        ),
                        TextFieldWidget(
                          TextField(
                            controller: password,
                            decoration: getDec("Password"),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ButtonWidget(
                            "Sign In", '/main', getList(email, password)),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButtonWidget("Sign Up", '/signup'),
                      TextButtonWidget("Forgot Passwords", null)
                    ],
                  ),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
