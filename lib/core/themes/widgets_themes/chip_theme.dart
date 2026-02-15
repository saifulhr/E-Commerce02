import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:flutter/material.dart';

class Allchiptheme {
  Allchiptheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: AllColors.grey.withValues(alpha: 0.4),
    labelStyle: const TextStyle(color: AllColors.black),
    selectedColor: AllColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AllColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: AllColors.darkerGrey,
    labelStyle: TextStyle(color: AllColors.white),
    selectedColor: AllColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: AllColors.white,
  );
}
