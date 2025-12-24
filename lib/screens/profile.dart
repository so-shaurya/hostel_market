import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';

class Profile_screen extends StatefulWidget {
  const Profile_screen({super.key});
  static String id = 'profile_screen';
  @override
  State<Profile_screen> createState() => _Profile_screenState();
}

class _Profile_screenState extends State<Profile_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Text('Profile', style: kTextHeadline),
    );
  }
}
