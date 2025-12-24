import 'package:flutter/material.dart';
import 'package:hostel_market/screens/chat.dart';
import 'package:hostel_market/screens/home.dart';
import 'package:hostel_market/screens/post.dart';
import 'package:hostel_market/widgets/BottomBar.dart';
import 'package:hostel_market/widgets/TopAppBar.dart';

class Main_Screen extends StatefulWidget {
  const Main_Screen({super.key});

  @override
  State<Main_Screen> createState() => _Main_ScreenState();
}

class _Main_ScreenState extends State<Main_Screen> {
  int index = 0;

  final screens = [Home_Screen(), Post_screen(), Chat_screen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MartAppBar(),
      drawer: MartDrawer(),
      body: IndexedStack(index: index, children: screens),
      bottomNavigationBar: BottomBar(
        currentIndex: index,
        onTap: (i) {
          setState(() => index = i);
        },
      ),
    );
  }
}
