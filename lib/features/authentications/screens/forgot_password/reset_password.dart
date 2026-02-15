import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/features/authentications/screens/login/log_in_screen.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/images.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:e_commerce02/core/helpers/device_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResetPassword extends ConsumerWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => LogInScreen()),
            ),
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
                OnTexts.forgotEmailsentTitle,
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
                OnTexts.forgotEmailsentSubTitle,
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: AllSizes.spaceBtwSections),
              DiffElevatedButton(
                onPressed: () {},
                child: Text(OnTexts.buttonDone),
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
