import 'package:flutter/material.dart';
import 'package:store_ui/components/default_buttom.dart';

import 'package:store_ui/size_config.dart';

import '../../../constants.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHight * 0.05,
              ),
              Text(
                'OTP Verification',
                style: headingStyle,
              ),
              const Text('we sent your code to 01146082***'),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHight * 0.15,
              ),
              const OtpForm(),
              SizedBox(
                height: SizeConfig.screenHight * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('This code will expire in'),
        const SizedBox(
          width: 3,
        ),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) => Text(
            '00:${value.toInt()}',
            style: const TextStyle(color: Colors.red),
          ),
          onEnd: () {},
        ),
      ],
    );
  }
}
