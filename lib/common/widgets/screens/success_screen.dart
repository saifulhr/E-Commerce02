import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key, required this.title, required this.SUbtitle, required this.image, required this.ontap});

  final String title, SUbtitle,image;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AllSizes.defaultSpace),
          child: Column(
            children: [
              // Success Image
              Image.asset(
                image,
                height: AllDeviceHelpers.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: AllSizes.spaceBtwItems),
              // Title
              Text(
               title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AllSizes.spaceBtwItems),
              // SUbtitle
              Text(
                SUbtitle,
                style: Theme.of(context).textTheme.bodySmall,
                  textAlign: TextAlign.center,
              ),
              SizedBox(height: AllSizes.spaceBtwSections),
              // Continue
              DiffElevatedButton(
                onPressed: ontap,
                child: Text(OnTexts.ButtonContinue),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
