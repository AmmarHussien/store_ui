import 'package:flutter/material.dart';
import 'package:store_ui/models/products.dart';
import 'package:store_ui/screens/home/components/popular_products_screen.dart';

import 'package:store_ui/size_config.dart';

import 'all_products.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';

import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: getProportionateScreenHeight(
                20,
              ),
            ),
            const HomeHeader(),
            SizedBox(
              height: getProportionateScreenHeight(
                30,
              ),
            ),
            const DiscountBanner(),
            SizedBox(
              height: getProportionateScreenHeight(
                30,
              ),
            ),
            const Categories(),
            SizedBox(
              height: getProportionateScreenHeight(
                20,
              ),
            ),
            const SpecialOffers(),
            SizedBox(
              height: getProportionateScreenHeight(
                20,
              ),
            ),
            const PopularProductsItems(),
            SizedBox(
              height: getProportionateScreenHeight(
                40,
              ),
            ),
            const AllProducts(),
            SizedBox(
              height: getProportionateScreenHeight(
                40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
