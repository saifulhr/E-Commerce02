import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:e_commerce02/utils/helpers/helpers_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.actions,
    this.leadingicon,
    this.showBackArrow = false,
    this.leadingOnPressed,
  });
  final Widget? title;
  final List<Widget>? actions;
  final IconData? leadingicon;
  final bool showBackArrow;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = HelpersFunction.isDarkMode(context);
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: AllSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        //Leading Widget
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: isDarkMode ? AllColors.white : AllColors.dark,
                ),
              )
            : leadingicon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingicon))
            : null,
        //Actions Widgets
        actions: actions,
        //Title Widgets
        title: title,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AllDeviceHelpers.getAppBarHeight());
}
