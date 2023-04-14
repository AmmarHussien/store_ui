import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_ui/models/cart.dart';
import 'package:store_ui/size_config.dart';

import 'cart_item_card.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(
          20,
        ),
      ),
      child: ListView.builder(
        itemCount: demoCarts.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Dismissible(
            direction: DismissDirection.endToStart,
            key: Key(demoCarts[index].product.id.toString()),
            background: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                  color: const Color(
                    0xFFFFE6E6,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  const Spacer(),
                  SvgPicture.asset('assets/icons/Trash.svg')
                ],
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                demoCarts.removeAt(index);
              });
            },
            child: CartItemCard(
              cart: demoCarts[index],
            ),
          ),
        ),
      ),
    );
  }
}
