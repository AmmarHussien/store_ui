import 'package:flutter/widgets.dart';
import 'package:store_ui/screens/complete_profile/complete_profile_screen.dart';
import 'package:store_ui/screens/otp/otp_screen.dart';
import 'package:store_ui/screens/sign_up/sign_up_screen.dart';

import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SingUpScreen.routeName: (context) => const SingUpScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName:(context) => const OtpScreen(),
};
