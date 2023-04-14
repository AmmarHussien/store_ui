import 'package:flutter/material.dart';
import 'package:store_ui/screens/complete_profile/complete_profile_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_buttom.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class SignUpFrom extends StatefulWidget {
  const SignUpFrom({super.key});

  @override
  State<SignUpFrom> createState() => _SignUpFromState();
}

class _SignUpFromState extends State<SignUpFrom> {
  final _formkey = GlobalKey<FormState>();
  late String email;
  late String password;
  late String conformPassword;
  final List<String> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error!);
      });
    }
  }

  void removeError({String? error}) {
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildConformPassFormField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
              text: 'Next',
              press: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();

                  Navigator.of(context)
                      .pushNamed(CompleteProfileScreen.routeName);
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => conformPassword = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conformPassword) {
          removeError(error: kMatchPassError);
        }
        conformPassword = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        hintText: "Re-enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: "assets/icons/Lock.svg"),
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
          removeError(
            error: kShortPassError,
          );
        }
        password = value;
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
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kInvalidEmailError)) {
          removeError(error: kInvalidEmailError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kEmailNullError)) {
          addError(error: kEmailNullError);

          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          addError(error: kInvalidEmailError);

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
