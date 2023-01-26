import 'package:flutter/material.dart';
import 'package:tasklist/pages/splash_page.dart';

void main()=>runApp(const StartPage());

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task App",
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const SplashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
