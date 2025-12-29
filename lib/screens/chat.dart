import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';
import 'package:hostel_market/widgets/ProdCreationCard.dart';

class Chat_screen extends StatefulWidget {
  const Chat_screen({super.key});
  static String id = 'chat_screen';
  @override
  State<Chat_screen> createState() => _Chat_screenState();
}

class _Chat_screenState extends State<Chat_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(child: ProdCreationBox()),
    );
  }
}
