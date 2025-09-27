import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.animation,
    required this.title,
    required this.subtitle,
  });
  final String animation;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AllDeviceHelpers.getAppBarHeight()),
      child: Column(
        children: [
          Lottie.asset(animation),
          Text(title, style: Theme.of(context).textTheme.headlineMedium),
          Text(subtitle, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
