import 'package:e_commerce02/common/widgets/button/social_button.dart';
import 'package:e_commerce02/common/widgets/login_signup/form_dividor.dart';
import 'package:e_commerce02/features/authentications/screens/login/widgets/log_in_form.dart';
import 'package:e_commerce02/features/authentications/screens/login/widgets/log_in_header.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogInScreen extends ConsumerWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AllSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LogInHeader(),

              SizedBox(height: AllSizes.spaceBtwSections),
              //Log In Textfeild
              LogInForm(),

              SizedBox(height: AllSizes.spaceBtwSections),

              // Dividor
              FormDivider(title: OnTexts.orsigninwith),

              SizedBox(height: AllSizes.spaceBtwSections),

              // Google or Facebook Sign In
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
