import 'package:flutter/material.dart';


import 'package:store_ui/size_config.dart';


import 'forgot_password_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(
              20,
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHight * 0.1,
              ),
              Text(
                'Forget Password',
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(
                    28,
                  ),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Please enter your email and we will send \n you a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHight * 0.1,
              ),
              const ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

