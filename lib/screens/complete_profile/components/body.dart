import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';
import 'complete_profile_form.dart';

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
                height: SizeConfig.screenHight * 0.02,
              ),
              Text(
                'Complete Profile',
                style: headingStyle,
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHight * 0.05,
              ),
              const CompleteProfileForm(),
              SizedBox(
                height: getProportionateScreenHeight(
                  30,
                ),
              ),
              const Text(
                'By continuing your confirm that you agree \nwith our term and condition',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
