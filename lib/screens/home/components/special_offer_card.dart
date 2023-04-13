
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    super.key,
    required this.image,
    required this.category,
    required this.numOfBrands,
    required this.press,
  });

  final String image, category;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(
        242,
      ),
      height: getProportionateScreenWidth(
        100,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          20,
        ),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.cover,
            ),
            Container(
              width: getProportionateScreenWidth(
                242,
              ),
              height: getProportionateScreenWidth(
                100,
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF343434).withOpacity(
                      0.4,
                    ),
                    const Color(0xFF343434).withOpacity(
                      0.15,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(
                  15,
                ),
                vertical: getProportionateScreenWidth(
                  10,
                ),
              ),
              child: Text.rich(
                TextSpan(
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  children: [
                    TextSpan(
                      text: '$category\n',
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(
                          18,
                        ),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '$numOfBrands Brands',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
