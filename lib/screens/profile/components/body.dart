import 'package:flutter/material.dart';


import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProfilePic(),
        const SizedBox(
          height: 20,
        ),
        ProfileMenu(
          text: 'My Account',
          icon: 'assets/icons/User Icon.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Notification',
          icon: 'assets/icons/Bell.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Setting',
          icon: 'assets/icons/Settings.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Help center',
          icon: 'assets/icons/Question mark.svg',
          press: () {},
        ),
        ProfileMenu(
          text: 'Log out',
          icon: 'assets/icons/Log out.svg',
          press: () {},
        ),
      ],
    );
  }
}
