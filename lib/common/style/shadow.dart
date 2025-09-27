import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:flutter/widgets.dart';

class AllShadows {
  AllShadows._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
      color: AllColors.black.withValues(alpha: 0.1),
      spreadRadius: 2.0,
      blurRadius: 4.0,
    ),
  ];
}
