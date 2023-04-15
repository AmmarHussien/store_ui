import 'package:flutter/material.dart';


import '../../../models/products.dart';
import '../../details/details_screen.dart';
import '../../home/components/product_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runSpacing: 20,
        children: [
          ...List.generate(
            demoProducts.length,
            (index) => ProductCard(
              press: () {
                Navigator.of(context).pushNamed(
                  DetailsScreen.routeName,
                  arguments: ProductDetailsArguments(
                    product: demoProducts[index],
                  ),
                );
              },
              product: demoProducts[index],
            ),
          ),
        ],
      ),
    );
  }
}
