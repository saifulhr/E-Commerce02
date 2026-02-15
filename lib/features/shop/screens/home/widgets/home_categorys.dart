import 'package:e_commerce02/common/widgets/image_text/vertical_imagetext.dart';
import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/images.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeCategorys extends ConsumerWidget {
  const HomeCategorys({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(left: AllSizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Section header
          Text(
            OnTexts.popularCategory,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: AllColors.white),
          ),
          SizedBox(height: AllSizes.spaceBtwItems),
          //Category List View
          SizedBox(
            height: 80,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: AllSizes.spaceBtwItems,),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                //Category vertical image text
                return CategoryVerticalImageText(
                  title: 'Sports Categories',
                  image: Onimages.sportsIcon,
                  textColor: AllColors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}