import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tasklist/pages/task_page.dart';

import '../widgets/circulat_progress.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late int counter = 0;

  void loadingStatus(){
    Future.delayed(const Duration(seconds: 1)).then((_){
      setState(() {
        counter+=25;
      });
      loadingStatus();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadingStatus();
    Timer(const Duration(seconds: 4),
        ()=>Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder:
                (context) => TaskList(),
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image2.jpg"),
              fit: BoxFit.fill
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicatorCustom(),
              const SizedBox(height:20.0),
              Text("Loading: $counter%", style: TextStyle(
                fontSize: 18,
                color: Colors.green,
              ),)

            ],
          ),
        ),
      ),
    );
  }
}

