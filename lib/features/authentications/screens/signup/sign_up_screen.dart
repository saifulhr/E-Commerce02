import 'package:e_commerce02/common/widgets/button/social_button.dart';
import 'package:e_commerce02/common/widgets/login_signup/form_dividor.dart';
import 'package:e_commerce02/features/authentications/screens/signup/widgets/sign_up_form.dart';
import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AllSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Signup Screen Title
              Text(
                OnTexts.singupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: AllSizes.spaceBtwSections),
              // [Form]
              SignUpForm(),
               SizedBox(height: AllSizes.spaceBtwSections),
              // [Divider]
              FormDivider(title: OnTexts.orsignupwithh),
              // [footer]
               SizedBox(height: AllSizes.spaceBtwSections),
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}

