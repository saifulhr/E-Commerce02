import 'package:e_commerce02/features/authentications/screens/login/log_in_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get to => Get.find();
  // variables
  final pagecontroller = PageController();
  final RxInt currentIndex = 0.obs;
  //  Update current index when the page scroolls
  void updatePageIndicator(index) {
    currentIndex.value = index;
  }

  // Jump to next page

  void dotNavigationClick(int index) {
    currentIndex.value = index;
    pagecontroller.animateToPage(
      index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
  }

  // update current index and jump to nlast page

  void nextPage() {
    if (currentIndex.value == 2) {
      Get.offAll(() => LogInScreen());
      return;
    }
    currentIndex.value++;
    pagecontroller.animateToPage(
      currentIndex.value,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
  }

  // update current index and jump to nlast page

  void skipPage() {
    currentIndex.value = 2;
    pagecontroller.animateToPage(
      2,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
  }
}
