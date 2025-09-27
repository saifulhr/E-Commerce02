import 'package:e_commerce02/features/shop/screens/home/home_screens.dart';
import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    bool dark = HelpersFunction.isDarkMode(context);

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),

      // Bottom navigation bar
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          backgroundColor: dark ? AllColors.dark : AllColors.light,
          indicatorColor: dark
              ? AllColors.light.withValues(alpha: 0.1)
              : AllColors.dark.withValues(alpha: 0.1),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) {
            controller.selectedIndex.value = index;
          },
          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Store'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [HomeScreens(), Container(color: Colors.green,), Container(color: Colors.black,), Container(color: Colors.yellow,)];
}
