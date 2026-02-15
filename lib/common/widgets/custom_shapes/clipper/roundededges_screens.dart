import 'package:e_commerce02/common/widgets/custom_shapes/clipper/rounded_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomRoundedEdgesScreens extends ConsumerWidget {
  const CustomRoundedEdgesScreens({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ClipPath(
      clipper: CustomRoundedEdges(),
      child: child,
    );
  }
}