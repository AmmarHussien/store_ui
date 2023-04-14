import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../size_config.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    this.rating = 0.0,
    required super.child,
    required super.preferredSize,
  });

  final double rating;
  @override
  Size get preferredSize => Size.fromHeight(
        AppBar().preferredSize.height,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(
            20,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RounddedIconBtn(
              icon: Icons.arrow_back,
              press: () => Navigator.of(context).pop(),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  Text(
                    rating.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SvgPicture.asset('assets/icons/Star Icon.svg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
