import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 140,
    this.aspectRetion = 1.02,
    required this.product,
    required this.press,
  });

  final double width, aspectRetion;
  final Product product;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: getProportionateScreenWidth(
          20,
        ),
        right: getProportionateScreenWidth(
          20,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          press();
        },
        child: SizedBox(
          width: getProportionateScreenWidth(width),
          //height: getProportionateScreenWidth(width),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRetion,
                child: Container(
                  padding: EdgeInsets.all(
                    getProportionateScreenWidth(
                      15,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(
                      0.1,
                    ),
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                  child: Image.asset(
                    product.images[0],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                product.title,
                style: const TextStyle(
                  color: Colors.black,
                ),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(
                        18,
                      ),
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(30),
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(
                        getProportionateScreenWidth(
                          6,
                        ),
                      ),
                      width: getProportionateScreenWidth(
                        28,
                      ),
                      height: getProportionateScreenWidth(
                        28,
                      ),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor.withOpacity(0.15)
                            : kSecondaryColor.withOpacity(
                                0.1,
                              ),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        // ignore: deprecated_member_use
                        color: product.isFavourite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
