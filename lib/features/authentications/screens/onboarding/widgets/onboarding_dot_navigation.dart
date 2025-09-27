import 'package:e_commerce02/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotnavigation extends StatelessWidget {
  const OnboardingDotnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.to;
    return Positioned(
      bottom: AllDeviceHelpers.getBottomNavigationBarHeight() * 6,
      left: AllDeviceHelpers.getScreenWidth(context) / 3,
      right: AllDeviceHelpers.getScreenWidth(context) / 3,
      child: SmoothPageIndicator(
        controller: controller.pagecontroller,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(dotHeight: 6.0),
      ),
    );
  }
}
