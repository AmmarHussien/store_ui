import 'package:flutter/material.dart';

import 'components/body.dart';


class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  static String routeName = '/sing_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: const Text(
        'Sign In',
      ),
    );
  }
}
