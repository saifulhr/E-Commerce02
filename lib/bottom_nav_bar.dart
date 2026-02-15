import 'package:e_commerce02/features/shop/screens/home/home_screens.dart';
import 'package:e_commerce02/core/helpers/helpers_function.dart';
import 'package:e_commerce02/core/providers/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import 'core/constants/all_colors.dart';

class BottomNavBar extends ConsumerWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationProvider);
    bool dark = HelpersFunction.isDarkMode(context);

    final screens = [
      const HomeScreens(),
      const ColoredBox(color: Colors.green),
      const ColoredBox(color: Colors.black),
      const ColoredBox(color: Colors.yellow),
    ];

    return Scaffold(
      body: screens[selectedIndex],

      bottomNavigationBar: NavigationBar(
        elevation: 0,
        backgroundColor: dark ? AllColors.dark : AllColors.light,
        indicatorColor: dark
            ? AllColors.light.withOpacity(0.1)
            : AllColors.dark.withOpacity(0.1),
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          ref.read(navigationProvider.notifier).state = index;
        },
        destinations: const [
          NavigationDestination(
              icon: Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(
              icon: Icon(Iconsax.heart), label: 'Wishlist'),
          NavigationDestination(
              icon: Icon(Iconsax.user), label: 'Profile'),
        ],
      ),
    );
  }
}
