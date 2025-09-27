import 'package:e_commerce02/common/widgets/appbar/custom_app_bar.dart';
import 'package:e_commerce02/common/widgets/product/cart/custom_cart_counter_icon.dart';
import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title Text
          Text(
            OnTexts.homeTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AllColors.grey),
          ),
          //Sub Title Text
          Text(
            OnTexts.homeSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AllColors.grey),
          ),
        ],
      ),
    //Custom Cart Icon With Counter
      actions: [CustomCartCounterIcon()],
    );
  }
}

