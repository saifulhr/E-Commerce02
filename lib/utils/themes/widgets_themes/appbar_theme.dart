import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:flutter/material.dart';

class AllAppbarTheme {
  AllAppbarTheme._();
  // this is the light appbar theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AllColors.black, size: AllSizes.iconMd),
    actionsIconTheme: IconThemeData(
      color: AllColors.black,
      size: AllSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AllColors.black,
    ),
  );
  // this is the dark appbar theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AllColors.white, size: AllSizes.iconMd),
    actionsIconTheme: IconThemeData(
      color: AllColors.white,
      size: AllSizes.iconMd,
    ),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: AllColors.white,
    ),
  );
}
