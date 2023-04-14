import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';
import 'color_dot.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          20,
        ),
      ),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDot(
              color: product.colors[index],
              isSelected: selectedColor == index,
            ),
          ),
          const Spacer(),
          RounddedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          const SizedBox(
            width: 10,
          ),
          RounddedIconBtn(
            icon: Icons.add,
            press: () {},
          ),
        ],
      ),
    );
  }
}
