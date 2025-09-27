import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:flutter/material.dart';

class AllBottomSheetTheme {
  AllBottomSheetTheme._();
  // this is the light bottom sheet theme
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AllColors.white,
    modalBackgroundColor: AllColors.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
  // this is the dark bottom sheet theme
  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: AllColors.black,
    modalBackgroundColor: AllColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
