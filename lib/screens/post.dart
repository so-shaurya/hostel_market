import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';

class Post_screen extends StatefulWidget {
  const Post_screen({super.key});
  static String id = 'post_screen';
  @override
  State<Post_screen> createState() => _Post_screenState();
}

class _Post_screenState extends State<Post_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(child: Text('Post')),
    );
  }
}
