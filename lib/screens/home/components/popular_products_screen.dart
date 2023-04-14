import 'package:flutter/material.dart';
import 'package:store_ui/screens/details/details_screen.dart';

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
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(
                      product: demoProducts[index],
                      press: () {
                        Navigator.of(context).pushNamed(
                          DetailsScreen.routeName,
                          arguments: ProductDetailsArguments(
                            product: demoProducts[index],
                          ),
                        );
                      },
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
