import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_buttom.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';
import '../../forgot_password/forgot_password_screen.dart';
import '../../login_success/login_success_screen.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  final List<String> errors = [];
  late bool remember = false;

  void addError({required String error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({required String error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              const Text('Remember me'),
              const Spacer(),
              GestureDetector(
                onTap: () => Navigator.of(context)
                    .pushNamed(ForgotPasswordScreen.routeName),
                child: const Text(
                  'Forget Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          DefaultButton(
            text: 'Login',
            press: () {
              if (_formkey.currentState!.validate()) {
                _formkey.currentState!.save();
                Navigator.of(context).pushNamed(
                  LoginSuccessScreen.routeName,
                );
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          removeError(
            error: kPassNullError,
          );
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          removeError(error: kShortPassError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          addError(error: kPassNullError);

          return "";
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          addError(error: kShortPassError);

          return "";
        }
        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintText: 'Enter you password',
        label: Text('Password'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Lock.svg',
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kEmailNullError)) {
          removeError(
            error: kEmailNullError,
          );
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(
            error: kInvalidEmailError,
          );
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          addError(
            error: kEmailNullError,
          );
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(
            error: kInvalidEmailError,
          );
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter you email',
        label: Text('Email'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Mail.svg',
        ),
      ),
    );
  }
}
