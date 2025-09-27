import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CustomCartCounterIcon extends StatelessWidget {
  const CustomCartCounterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    bool dark = HelpersFunction.isDarkMode(context);
    return Stack(
      children: [
        //Bag Icon Button
        IconButton(
          onPressed: () {},
          icon: Icon(
            Iconsax.shopping_bag,
            color: dark ? AllColors.light : AllColors.light,
          ),
        ),
        //Counter Text
        Positioned(
          right: 6.0,
          child: Container(
            height: 18,
            width: 18,
            decoration: BoxDecoration(
              color: dark ? AllColors.dark : AllColors.light,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: dark ? AllColors.light : AllColors.dark,
                  fontSizeFactor: 0.8,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
