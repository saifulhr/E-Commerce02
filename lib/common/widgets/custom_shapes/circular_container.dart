import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.radius = 400,
    this.backgroundColor = AllColors.white,
    this.margin,
    this.padding,
    this.child,
  });
  final double height, width, radius;
  final Color backgroundColor;
  final EdgeInsetsGeometry? margin, padding;
  final Widget ? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      
      child: child,
    );
  }
}
