import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:e_commerce02/features/authentications/screens/login/log_in_screen.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/images.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import '../../../../common/widgets/button/elevated_button.dart';
import '../../../../core/helpers/device_helpers.dart';
import 'provider/provider.dart';
import 'widgets/onboarding_page.dart';

class OnboardingScreen extends ConsumerWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider);
    final controller = ref.read(onboardingControllerProvider.notifier);

    void goToLogin() {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (_) => LogInScreen()));
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AllSizes.defaultSpace),
        child: Stack(
          children: [
            // PageView
            PageView(
              controller: state.pageController,
              onPageChanged: controller.updatePage,
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

            // Dot indicator
            Positioned(
              bottom: AllDeviceHelpers.getBottomNavigationBarHeight() * 6,
              left: AllDeviceHelpers.getScreenWidth(context) / 3,
              right: AllDeviceHelpers.getScreenWidth(context) / 3,
              child: SmoothPageIndicator(
                controller: state.pageController,
                count: 3,
                effect: ExpandingDotsEffect(dotHeight: 6.0),
                onDotClicked: controller.dotNavigationClick,
              ),
            ),

            // Next button
            Positioned(
              right: 0,
              left: 0,
              bottom: AllSizes.spaceBtwItems,
              child: DiffElevatedButton(
                onPressed: () => controller.nextPage(goToLogin),
                child: Text(state.currentIndex == 2 ? 'Get Started' : 'Next'),
              ),
            ),

            // Skip button
            if (state.currentIndex != 2)
              Positioned(
                right: 0,
                top: AllDeviceHelpers.getAppBarHeight(),
                child: TextButton(
                  onPressed: controller.skipPage,
                  child: Text('Skip'),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
