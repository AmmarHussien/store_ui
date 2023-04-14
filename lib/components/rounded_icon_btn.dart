import 'package:flutter/material.dart';

import '../size_config.dart';

class RounddedIconBtn extends StatelessWidget {
  const RounddedIconBtn({
    super.key,
    required this.icon,
    required this.press,
  });

  final IconData icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: TextButton(
        onPressed: () {
          press();
        },
        child: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }
}
