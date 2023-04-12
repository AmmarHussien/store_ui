import 'package:flutter/material.dart';
import 'package:store_ui/screens/otp/otp_screen.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_buttom.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({super.key});

  @override
  State<CompleteProfileForm> createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formkey = GlobalKey<FormState>();
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

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
    return SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            buildFirstNameFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildLastNameFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPhoneNumberFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildAddressFormField(),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            DefaultButton(
              text: 'send',
              press: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                  Navigator.of(context).pushNamed(
                    OtpScreen.routeName,
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => address = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          removeError(error: kAddressNullError);
        } else if (value.length > 10 && errors.contains(kAddressShortError)) {
          removeError(error: kAddressShortError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          addError(error: kAddressNullError);

          return "";
        } else if (value.length < 15 && !errors.contains(kAddressShortError)) {
          addError(error: kAddressShortError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your Address',
        label: Text('Address'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Location point.svg',
        ),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) => phoneNumber = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPhoneNumberNullError)) {
          removeError(error: kPhoneNumberNullError);
        } else if (value.length == 11 &&
            errors.contains(kPhoneNumberShortError)) {
          removeError(error: kPhoneNumberShortError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPhoneNumberNullError)) {
          addError(error: kPhoneNumberNullError);

          return "";
        } else if (value.length < 11 &&
            !errors.contains(kPhoneNumberShortError)) {
          addError(error: kPhoneNumberShortError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your Phone Number',
        label: Text('Phone Number'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/Phone.svg',
        ),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kLastNamelNullError)) {
          removeError(error: kLastNamelNullError);
        } else if (value.length > 3 && errors.contains(kLastNameShortError)) {
          removeError(error: kLastNameShortError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kLastNamelNullError)) {
          addError(error: kLastNamelNullError);

          return "";
        } else if (value.length < 3 && !errors.contains(kLastNameShortError)) {
          addError(error: kLastNameShortError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your last name',
        label: Text('last Name'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.text,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kFirstNamelNullError)) {
          removeError(error: kFirstNamelNullError);
        } else if (value.length > 3 && errors.contains(kFirstNameShortError)) {
          removeError(error: kFirstNameShortError);
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kFirstNamelNullError)) {
          addError(error: kFirstNamelNullError);

          return "";
        } else if (value.length < 3 && !errors.contains(kFirstNameShortError)) {
          addError(error: kFirstNameShortError);

          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter your first name',
        label: Text('First Name'),
        suffixIcon: CustomSuffixIcon(
          svgIcon: 'assets/icons/User.svg',
        ),
      ),
    );
  }
}
