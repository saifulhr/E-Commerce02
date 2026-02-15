import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Onboarding state
class OnboardingState {
  final int currentIndex;
  final PageController pageController;

  OnboardingState({required this.currentIndex, required this.pageController});

  OnboardingState copyWith({int? currentIndex}) {
    return OnboardingState(
      currentIndex: currentIndex ?? this.currentIndex,
      pageController: pageController,
    );
  }
}

// Riverpod StateNotifier
class OnboardingController extends StateNotifier<OnboardingState> {
  OnboardingController() 
      : super(OnboardingState(currentIndex: 0, pageController: PageController()));

  void updatePage(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void dotNavigationClick(int index) {
    state.pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
    updatePage(index);
  }

  void nextPage(Function goToLogin) {
    if (state.currentIndex == 2) {
      goToLogin();
      return;
    }
    final nextIndex = state.currentIndex + 1;
    state.pageController.animateToPage(
      nextIndex,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
    updatePage(nextIndex);
  }

  void skipPage() {
    state.pageController.animateToPage(
      2,
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
    );
    updatePage(2);
  }
}

// Provider
final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, OnboardingState>(
        (ref) => OnboardingController());
