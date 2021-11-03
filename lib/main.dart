import 'package:flutter/material.dart';
import 'package:lofo_app/api_client/api_client.dart';
import 'widgets/home.dart';
import 'widgets/intro_slider.dart';
import 'widgets/login/signin.dart';
import 'widgets/login/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOFO',
      theme: ThemeData(
        //.withOpacity(0.1)
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/slider',
      routes: {
        '/slider': (context) => const IntroSliderPage(),
        '/main': (context) => const HomeWidget(),
        '/login': (context) => const SigninWidget(),
        '/signup': (context) => const SignupWidget(),

      },
    );
  }
}
