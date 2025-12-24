import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';
import 'package:hostel_market/screens/profile.dart';

class MartAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.background,
      centerTitle: true,

      title: Text(
        'CampusMart',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: AppColor.text),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class MartDrawer extends StatelessWidget {
  const MartDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColor.card,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 40, 16, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('MENU', style: kTextHeadline),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: AppColor.primary,
                      child: Icon(Icons.person, color: AppColor.text, size: 60),
                    ),
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Shaurya Singh', style: kTextNormal),
                        Text(
                          '2405530@kiit.ac.in',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: AppColor.text,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 8,
            child: Divider(thickness: 1, color: AppColor.text),
          ),
          ListTile(
            leading: Icon(
              Icons.person_2_outlined,
              size: 30,
              color: AppColor.text,
            ),
            title: Text('My Profile', style: kTextNormal),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, Profile_screen.id);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart_outlined,
              size: 30,
              color: AppColor.text,
            ),
            title: Text('My Listings', style: kTextNormal),
          ),
          SizedBox(height: 330),
          const Divider(),
          ListTile(
            leading: Icon(
              Icons.logout_outlined,
              size: 30,
              color: AppColor.text,
            ),
            title: Text('Log Out', style: kTextNormal),
          ),
        ],
      ),
    );
  }
}
