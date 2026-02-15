import 'package:e_commerce02/common/style/shadow.dart';
import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:e_commerce02/core/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class PrimarySearchBar extends ConsumerWidget {
  const PrimarySearchBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool dark = HelpersFunction.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: AllSizes.spaceBtwSections,
      left: AllSizes.spaceBtwSections,
      child: Container(
        height: AllSizes.searchBarHeight,
        padding: EdgeInsets.symmetric(horizontal: AllSizes.md),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AllSizes.borderRadiusLg),
          color: dark ? AllColors.dark : AllColors.light,
          boxShadow: AllShadows.searchBarShadow,
        ),
        child: Row(
          children: [
            Icon(Iconsax.search_normal_1, color: AllColors.grey),
            SizedBox(width: AllSizes.spaceBtwItems),
            Text(
              OnTexts.searchBarTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}
