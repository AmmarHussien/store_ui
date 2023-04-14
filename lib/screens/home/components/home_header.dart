import 'package:flutter/material.dart';
import 'package:store_ui/screens/cart/cart_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            press: () {
              Navigator.of(context).pushNamed(CartScreen.routeName);
            },
            svgSrc: 'assets/icons/Cart Icon.svg',
          ),
          IconBtnWithCounter(
            press: () {},
            svgSrc: 'assets/icons/Bell.svg',
            numOfItems: 5,
          ),
        ],
      ),
    );
  }
}
