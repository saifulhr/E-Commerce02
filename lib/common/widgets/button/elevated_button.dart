import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class DiffElevatedButton extends StatelessWidget {
  const DiffElevatedButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AllDeviceHelpers.getScreenWidth(context),
      child: ElevatedButton(onPressed: onPressed, child: child),
    );
  }
}
