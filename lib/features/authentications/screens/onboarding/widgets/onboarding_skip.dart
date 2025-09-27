import 'package:e_commerce02/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.to;
    return Obx(
      () => controller.currentIndex.value == 2
          ? SizedBox()
          : Positioned(
              right: 0,
              top: AllDeviceHelpers.getAppBarHeight(),
              child: TextButton(
                onPressed: controller.skipPage,
                child: Text('Skip'),
              ),
            ),
    );
  }
}
