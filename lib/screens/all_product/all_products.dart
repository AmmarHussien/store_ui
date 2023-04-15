import 'package:flutter/material.dart';

import 'components/body.dart';

class AllProductScreen extends StatelessWidget {
  const AllProductScreen({super.key});

  static String routeName = '/all_product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('All Products'),
      ),
      body: const Body(),
    );
  }
}
