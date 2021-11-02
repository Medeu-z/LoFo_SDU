import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'styled_widgets.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  bool hidePassword = true;
  InputDecoration getDec(text, icon, icon_1) {
    InputDecoration decoration = InputDecoration(
      prefixIcon: Icon(icon),
      suffixIcon: icon_1,
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

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  List<String> list = [];

  List<String> getList(nameC, emailC, passwordC) {
    list.add(nameC.text);
    list.add(emailC.text);
    list.add(passwordC.text);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // CircleContainer(700, 700, Colors.lightBlue, 360, 100, -80),
          // CircleContainer(400, 400, Colors.grey.withOpacity(0.8), 220, 360, 820),
          ListView(children: [
            Column(
              children: <Widget>[
                Column(
                  children: [
                    Column(children: [
                      TextWidget("Create Account"),
                    ]),
                    Column(
                      children: [
                        TextFieldWidget(
                          TextField(
                            controller: name,
                            decoration: getDec("Name", Icons.person, null),
                          ),
                        ),
                        TextFieldWidget(
                          TextField(
                            controller: email,
                            decoration: getDec("Your Email", Icons.email, null),
                          ),
                        ),
                        TextFieldWidget(
                          TextField(
                            controller: email,
                            decoration:
                                getDec("Phone Number", Icons.phone, null),
                          ),
                        ),
                        TextFieldWidget(
                          TextField(
                            controller: password,
                            obscureText: hidePassword,
                            decoration: getDec(
                                "Password",
                                Icons.lock,
                                IconButton(
                                    onPressed: () {
                                      setState(() {
                                        hidePassword = !hidePassword;
                                      });
                                    },
                                    color: Colors.black.withOpacity(0.4),
                                    icon: Icon(hidePassword
                                        ? Icons.visibility_off
                                        : Icons.visibility))),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ButtonWidget(
                            "Sign Up", '/main', getList(name, email, password)),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButtonWidget("Sign In", '/login'),
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
