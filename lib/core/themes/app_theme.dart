import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/themes/widgets_themes/appbar_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/bottom_sheet_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/checkbox_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/chip_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/elevatedbutton_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/outlined_button_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/text_feild_theme.dart';
import 'package:e_commerce02/core/themes/widgets_themes/text_themes.dart';
import 'package:flutter/material.dart';

class AppallTheme {
  AppallTheme._();
  // this is the light theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.light,
    primaryColor: AllColors.primary,
    disabledColor: AllColors.grey,
    textTheme: ApptextTheme.lightTextTheme,
    chipTheme: Allchiptheme.lightChipTheme,
    scaffoldBackgroundColor: AllColors.white,
    appBarTheme: AllAppbarTheme.lightAppBarTheme,
    elevatedButtonTheme: AllEelevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: AllTextFeildTheme.lightInputDecorationTheme,
    outlinedButtonTheme: AllOutLinedButtonTheme.lightOutlinedButtonTheme,
    bottomSheetTheme: AllBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: AllCheckboxTheme.lightCheckboxTheme,
  );
  // this is the dark theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Nunito',
    brightness: Brightness.dark,
    primaryColor: AllColors.primary,
    disabledColor: AllColors.grey,
    textTheme: ApptextTheme.darkTextTheme,
    chipTheme: Allchiptheme.darkChipTheme,
    scaffoldBackgroundColor: AllColors.black,
    appBarTheme: AllAppbarTheme.darkAppBarTheme,
    elevatedButtonTheme: AllEelevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: AllTextFeildTheme.darkInputDecorationTheme,
    outlinedButtonTheme: AllOutLinedButtonTheme.darkOutlinedButtonTheme,
    bottomSheetTheme: AllBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: AllCheckboxTheme.darkCheckboxTheme,
  );
}
