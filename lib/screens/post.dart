import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';
import 'package:hostel_market/widgets/ProdCreationCard.dart';

class Post_screen extends StatefulWidget {
  const Post_screen({super.key});
  static String id = 'post_screen';
  @override
  State<Post_screen> createState() => _Post_screenState();
}

class _Post_screenState extends State<Post_screen> {
  bool showProdBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: Opacity(
                opacity: 0.7,
                child: Image.asset('lib/data/images/PostScreenBG.png'),
              ),
            ),
          ),

          if (showProdBox)
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    showProdBox = false;
                  });
                },
                child: Container(
                  color: Colors.black54,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: AnimatedScale(
                        duration: Duration(milliseconds: 200),
                        scale: showProdBox ? 1 : 0,
                        child: ProdCreationBox(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),

      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              showProdBox = true;
            });
          },
          shape: const CircleBorder(),
          backgroundColor: AppColor.card,
          child: Icon(
            Icons.add_circle_outline,
            color: AppColor.primary,
            size: 40,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsetsGeometry.all(15),
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColor.primary,
        ),
        child: Center(child: Text('POST', style: kTextHeadline)),
      ),
    );
  }
}
