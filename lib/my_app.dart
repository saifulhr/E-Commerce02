import 'package:e_commerce02/features/authentications/screens/onboarding/onboarding_screens.dart';
import 'package:e_commerce02/utils/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppallTheme.lightTheme,
      darkTheme: AppallTheme.darkTheme,
      home: OnboardingScreens(),
    );
  }
}
