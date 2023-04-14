// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:store_ui/models/products.dart';

import 'components/body.dart';

import 'components/custom_app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = '/details';

  @override
  Widget build(BuildContext context) {
    // final ProductDetailsArguments? arguments =
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9),
      appBar: CustomAppBar(
        rating: arguments.product.rating,
        preferredSize: Size.zero,
        child: const Text(''),
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
