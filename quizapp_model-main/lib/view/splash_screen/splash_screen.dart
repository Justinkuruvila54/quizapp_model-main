import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp_model/utils/color_constant.dart';

import 'package:quizapp_model/view/home_page/hpme_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomePage(),
      ));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          width: 207,
          height: 500,
          child: Image.network(
           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsj3BkzwvTkV40xfCl3_NE-OccNqZA23ZRFA&s"
          ),
          // decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: AssetImage("assets/images/logos_netflix (3).png"))),
        ),
      ),
    );
  }
}
