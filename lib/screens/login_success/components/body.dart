import 'package:flutter/material.dart';
import 'package:store_ui/components/default_buttom.dart';
import 'package:store_ui/screens/home/home_screen.dart';
import 'package:store_ui/size_config.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHight * 0.04,
        ),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHight * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHight * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProportionateScreenWidth(30),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Go To Home",
            press: () {
              Navigator.of(context).pushNamed(
                HomeScreen.routeName,
              );
            },
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
