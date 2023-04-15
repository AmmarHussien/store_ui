import 'package:flutter/material.dart';
import 'package:store_ui/screens/all_product/all_products.dart';

import '../../../models/products.dart';
import '../../../size_config.dart';
import '../../details/details_screen.dart';
import 'product_card.dart';
import 'section_title.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: 'All Product',
          press: () {
            Navigator.of(context).pushNamed(AllProductScreen.routeName);
          },
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
