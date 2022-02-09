import 'package:flutter/material.dart';
import 'package:uihut_practice/view/login_email_screen.dart';
import 'package:uihut_practice/view/login_password_screen.dart';
import 'package:uihut_practice/view/set_profile_screen.dart';
import 'package:uihut_practice/view/splash_screen.dart';
import 'package:uihut_practice/view/start_page.dart';
import 'package:uihut_practice/view/subscription_screen.dart';
import 'package:uihut_practice/view/verification_screen.dart';

import 'view/topic_selection_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI HUT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TopicSelection(),
    );
  }
}


