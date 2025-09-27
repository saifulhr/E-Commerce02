import 'package:e_commerce02/features/authentications/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce02/features/authentications/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce02/features/authentications/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce02/features/authentications/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce02/features/authentications/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/images.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AllSizes.defaultSpace),
        child: Stack(
          children: [
            // scrollable page
            PageView(
              controller: controller.pagecontroller,
              onPageChanged: controller.updatePageIndicator,
              children: [
                OnboardingPage(
                  animation: Onimages.Onboarding1Animation,
                  title: OnTexts.onBoardingTitle1,
                  subtitle: OnTexts.onBoardingSubTitle1,
                ),
                OnboardingPage(
                  animation: Onimages.Onboarding2Animation,
                  title: OnTexts.onBoardingTitle2,
                  subtitle: OnTexts.onBoardingSubTitle2,
                ),
                OnboardingPage(
                  animation: Onimages.Onboarding3Animation,
                  title: OnTexts.onBoardingTitle3,
                  subtitle: OnTexts.onBoardingSubTitle3,
                ),
              ],
            ),

            // indicator
            OnboardingDotnavigation(),

            // bottom button
            OnboardingNextButton(),

            // skip button
            OnboardingSkip(),
          ],
        ),
      ),
    );
  }
}
