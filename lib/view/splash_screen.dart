

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uihut_practice/view/topic_selection_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 10),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => TopicSelection())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xff051435),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Ellipse.png",height: 200,width: 500,
            ),

          ],
        ),
      ),
      bottomNavigationBar: Text(
        "Powered by ui hut",textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'OpenSans',
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.grey),
      ),
    );
  }
}
