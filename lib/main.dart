import 'package:flutter/material.dart';
import 'home.dart';
import 'intro_slider.dart';

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
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/slider',
      routes: {
        '/slider': (context) => const IntroSliderPage(),
        '/main': (context) => const HomeWidget(),
      },
    );
  }
}
