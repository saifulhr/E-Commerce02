import 'package:e_commerce02/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryVerticalImageText extends ConsumerWidget {
  const CategoryVerticalImageText({
    super.key, required this.title, required this.image, required this.textColor, this.backgroundColor, this.ontap,
  });

  final String title,image;
  final Color textColor;
  final Color? backgroundColor;
  final VoidCallback ? ontap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool dark = HelpersFunction.isDarkMode(context);
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          //Circle Image
          CircularContainer(
            height: 56,
            width: 56,
            backgroundColor: backgroundColor ?? (dark ? AllColors.dark : AllColors.light),
            padding: EdgeInsets.all(AllSizes.sm),
            child: Padding(
              padding: const EdgeInsets.all(AllSizes.sm),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          //Title
          SizedBox(
            width: 55,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
