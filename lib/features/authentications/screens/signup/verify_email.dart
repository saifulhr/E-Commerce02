import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/common/widgets/screens/success_screen.dart';
import 'package:e_commerce02/features/authentications/screens/login/log_in_screen.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/images.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:e_commerce02/utils/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => LogInScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AllSizes.defaultSpace),
          child: Column(
            children: [
              // Password Reset Email Sent Image
              Image.asset(
                Onimages.mailSentImage,
                height: AllDeviceHelpers.getScreenWidth(context) * 0.6,
              ),
              SizedBox(height: AllSizes.spaceBtwItems),
              // Title
              Text(
                OnTexts.emailSentTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AllSizes.spaceBtwItems),
              // Email
              Text(
                'smartplace@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              SizedBox(height: AllSizes.spaceBtwItems),
              // SUbtitle
              Text(
                OnTexts.emailSentSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AllSizes.spaceBtwSections),
              // Continue
              DiffElevatedButton(
                onPressed: () => Get.to(
                  () => SuccessScreen(
                    title: OnTexts.accountCreateSuccessfullyTitle,
                    SUbtitle: OnTexts.accountCreateSuccessfullySubTitle,
                    image: Onimages.accountCreate,
                    ontap: () {},
                  ),
                ),
                child: Text(OnTexts.ButtonContinue),
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(OnTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
