import 'package:flutter/material.dart';

import 'components/body.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});
  static String routeName = '/sign_up';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sign Up',
        ),
      ),
      body: const Body(),
    );
  }
}
