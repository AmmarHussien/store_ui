import 'package:flutter/material.dart';

import '../../components/custom_buttom_nav_bar.dart';

import '../../enums.dart';
import 'components/body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static String routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Profile',
        ),
      ),
      body: const Body(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
