import 'package:e_commerce02/features/authentications/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce02/features/authentications/screens/login/widgets/log_in_form.dart';
import 'package:e_commerce02/features/authentications/screens/onboarding/onboarding_screens.dart';
import 'package:e_commerce02/features/authentications/screens/signup/sign_up_screen.dart';
import 'package:e_commerce02/features/shop/screens/home/home_screens.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onbordingscreen = '/onboardingscreen';
  static const String signup = '/signup';
  static const String login = '/login';
  static const String forgotPassword = '/forgotpassword';
  static const String home = '/home';

  static Route <dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case onbordingscreen:
      //Onbiradng screen route
      return MaterialPageRoute(builder: (_)=> OnboardingScreen()); 
      case signup:
      //Signup screen route
      return MaterialPageRoute(builder: (_)=> SignUpScreen());
      case login:
      //Login screen route
      return MaterialPageRoute(builder: (_)=> LogInForm());
      case forgotPassword:
      //Forgot password screen route
      return MaterialPageRoute(builder: (_)=> ForgotPassword());
      case home:
      //Home screen route
      return MaterialPageRoute(builder: (_)=> HomeScreens());
      default:
      return MaterialPageRoute(builder: (_)=> HomeScreens());
    }
  }
}
