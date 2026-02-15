import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:flutter/material.dart';

class AllEelevatedButtonTheme {
  AllEelevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AllColors.light,
      backgroundColor: AllColors.primary,
      disabledForegroundColor: AllColors.darkGrey,
      disabledBackgroundColor: AllColors.buttonDisabled,
      side: const BorderSide(color: AllColors.light),
      padding: const EdgeInsets.symmetric(vertical: AllSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AllColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AllSizes.buttonRadius),
      ),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AllColors.light,
      backgroundColor: AllColors.primary,
      disabledForegroundColor: AllColors.darkGrey,
      disabledBackgroundColor: AllColors.darkerGrey,
      side: const BorderSide(color: AllColors.primary),
      padding: const EdgeInsets.symmetric(vertical: AllSizes.buttonHeight),
      textStyle: const TextStyle(
        fontSize: 16,
        color: AllColors.textWhite,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AllSizes.buttonRadius),
      ),
    ),
  );
}
