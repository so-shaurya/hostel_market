import 'package:flutter/material.dart';
import 'package:hostel_market/screens/chat.dart';
import 'package:hostel_market/screens/home.dart';
import 'package:hostel_market/screens/post.dart';
import 'package:hostel_market/screens/profile.dart';

import 'screens/appMain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Main_Screen(),

      routes: {
        Home_Screen.id: (context) => Home_Screen(),
        Post_screen.id: (context) => Post_screen(),
        Chat_screen.id: (context) => Chat_screen(),
        Profile_screen.id: (context) => Profile_screen(),
      },
    );
  }
}
