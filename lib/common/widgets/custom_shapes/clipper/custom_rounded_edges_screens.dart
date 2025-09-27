import 'package:e_commerce02/common/widgets/custom_shapes/clipper/custom_rounded_clipper.dart';
import 'package:flutter/material.dart';

class CustomRoundedEdgesScreens extends StatelessWidget {
  const CustomRoundedEdgesScreens({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomRoundedEdges(),
      child: child,
    );
  }
}