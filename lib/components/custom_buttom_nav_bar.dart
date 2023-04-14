import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.selectedMenu,
  });

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    const Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(
            40,
          ),
          topRight: Radius.circular(
            40,
          ),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(
              0,
              -15,
            ),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(HomeScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/Shop Icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Heart Icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.favourite == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/Chat bubble Icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.message == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(ProfileScreen.routeName);
              },
              icon: SvgPicture.asset(
                'assets/icons/User Icon.svg',
                colorFilter: ColorFilter.mode(
                  MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
