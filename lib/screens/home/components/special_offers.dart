import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'section_title.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Special for you',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(
            20,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(
                20,
              ),
            ),
            child: Row(
              children: [
                SpecialOfferCard(
                  category: 'Smartphone',
                  numOfBrands: 20,
                  image: 'assets/images/Image Banner 2.png',
                  press: () {},
                ),
                SizedBox(
                  width: getProportionateScreenWidth(
                    20,
                  ),
                ),
                SpecialOfferCard(
                  category: 'Fashion',
                  numOfBrands: 5,
                  image: 'assets/images/Image Banner 3.png',
                  press: () {},
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
