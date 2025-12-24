import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const BottomBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      backgroundColor: AppColor.card,
      selectedItemColor: AppColor.primary,
      unselectedItemColor: AppColor.text,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box_outlined),
          label: 'Post',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.chat_outlined), label: 'Chat'),
      ],
    );
  }
}
