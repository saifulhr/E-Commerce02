import 'package:e_commerce02/common/widgets/custom_shapes/circular_container.dart';
import 'package:e_commerce02/common/widgets/custom_shapes/clipper/custom_rounded_edges_screens.dart';
import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CustomRoundedEdgesScreens(
      child: Container(
        color: AllColors.primary,
        height: AllSizes.primaryHeaderCircularContainerSize,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              // This iS Coustomized Circulr Container
              child: CircularContainer(
                height: AllSizes.primaryHeaderCircularContainerSize,
                width: AllSizes.primaryHeaderCircularContainerSize,
                backgroundColor: AllColors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
              top: 50,
              right: -250,
              // This is Customized Circular Container
              child: CircularContainer(
                height: AllSizes.primaryHeaderCircularContainerSize,
                width: AllSizes.primaryHeaderCircularContainerSize,
                backgroundColor: AllColors.white.withValues(alpha: 0.1),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}