import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:flutter/material.dart';

class AllTextFeildTheme {
  AllTextFeildTheme._();
  // this is the light textfeild theme
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AllColors.darkGrey,
    suffixIconColor: AllColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AllSizes.fontSizeMd,
      color: AllColors.black,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AllSizes.fontSizeSm,
      color: AllColors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AllColors.black.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AllColors.warning),
    ),
  );
  // this is the dark text feild theme
  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AllColors.darkGrey,
    suffixIconColor: AllColors.darkGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: AllSizes.fontSizeMd,
      color: AllColors.white,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: AllSizes.fontSizeSm,
      color: AllColors.white,
    ),
    floatingLabelStyle: const TextStyle().copyWith(
      color: AllColors.white.withValues(alpha: 0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: AllColors.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(AllSizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: AllColors.warning),
    ),
  );
}
