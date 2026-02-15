import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/features/authentications/screens/forgot_password/reset_password.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends ConsumerWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(AllSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Forgot Screen Title
              Text(
                OnTexts.forgotpassordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AllSizes.spaceBtwItems / 2),
              // Forgot SCreen SubTitle
              Text(
                OnTexts.forgotpassordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
              ),

              SizedBox(height: AllSizes.spaceBtwSections * 2),

              // Forgot Screen Textfield
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: OnTexts.email,
                      prefixIcon: Icon(Iconsax.direct_right),
                    ),
                  ),
                  SizedBox(height: AllSizes.spaceBtwItems),
                  // Submit Button
                  DiffElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ResetPassword()),
                    ),
                    child: Text(OnTexts.forgotSubmit),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
