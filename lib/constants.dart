import 'package:flutter/material.dart';
import 'package:store_ui/size_config.dart';

const kPrimaryColor = Color(0xFFFF7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradiantColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuaration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(
    28,
  ),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

final otpInputDecorration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getProportionateScreenHeight(15),
  ),
  enabledBorder: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  border: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(
      15,
    ),
    borderSide: const BorderSide(
      color: kTextColor,
    ),
  );
}

//Form Error

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Please Enter your email";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kFirstNamelNullError = "Please Enter your first name";
const String kFirstNameShortError = "First name is too short";
const String kLastNamelNullError = "Please Enter your last name";
const String kLastNameShortError = "last name is too short";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kPhoneNumberShortError = "PhoneNumber is too short";
const String kAddressNullError = "Please Enter your address";
const String kAddressShortError = "Address is too short";
