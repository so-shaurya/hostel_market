import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});
  static String id = 'home_screen';
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(child: Text('home')),
    );
  }
}
