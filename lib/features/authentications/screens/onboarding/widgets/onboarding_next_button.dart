import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.to;
    return Positioned(
      right: 0,
      left: 0,
      bottom: AllSizes.spaceBtwItems,
      child: DiffElevatedButton(
        onPressed: controller.nextPage,
        child: Obx(
          () =>
              Text(controller.currentIndex.value == 2 ? 'Get Started' : 'Next'),
        ),
      ),
    );
  }
}
