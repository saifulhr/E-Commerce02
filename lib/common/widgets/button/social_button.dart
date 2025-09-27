import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/images.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        buildbutton(Onimages.googleicon, () {}),
        SizedBox(width: AllSizes.spaceBtwItems),
        buildbutton(Onimages.facebookicon, () {}),
      ],
    );
  }

  Container buildbutton(String image, VoidCallback onPressed) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: AllColors.grey),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Image.asset(
          image,
          height: AllSizes.iconMd,
          width: AllSizes.iconMd,
        ),
      ),
    );
  }
}
