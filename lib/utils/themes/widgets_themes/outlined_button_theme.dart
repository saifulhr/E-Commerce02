import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:flutter/material.dart';

class AllOutLinedButtonTheme {
  AllOutLinedButtonTheme._();
  // this is the light elevated button theme
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: AllColors.dark,
      side: const BorderSide(color: AllColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AllColors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AllSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AllSizes.buttonRadius),
      ),
    ),
  );

  // this is the dark elevated buttton theme
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AllColors.light,
      side: const BorderSide(color: AllColors.borderPrimary),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AllColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: AllSizes.buttonHeight,
        horizontal: 20,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AllSizes.buttonRadius),
      ),
    ),
  );
}
