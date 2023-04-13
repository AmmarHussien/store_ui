import 'package:flutter/material.dart';

import '../../../models/products.dart';
import '../../../size_config.dart';
import 'product_card.dart';
import 'section_title.dart';

class PopularProductsItems extends StatelessWidget {
  const PopularProductsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'Popular Product',
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(
            20,
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => ProductCard(
                  product: demoProducts[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
