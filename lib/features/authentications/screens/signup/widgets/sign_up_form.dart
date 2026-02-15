import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/features/authentications/screens/signup/verify_email.dart';
import 'package:e_commerce02/features/authentications/screens/signup/widgets/privacy_policy_cheackbox.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class SignUpForm extends ConsumerWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: OnTexts.singupFirstName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
            SizedBox(width: AllSizes.spaceBtwInputFields),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: OnTexts.singupLastName,
                  prefixIcon: Icon(Iconsax.user),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: OnTexts.singupEmail,
            prefixIcon: Icon(Iconsax.direct_right),
          ),
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: OnTexts.singupphone,
            prefixIcon: Icon(Iconsax.call),
          ),
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            labelText: OnTexts.singuppassword,
            prefixIcon: Icon(Iconsax.eye),
          ),
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields / 2),

        PrivacyPolicyCheckbox(),
        SizedBox(height: AllSizes.spaceBtwItems),
        DiffElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => VerifyEmail()),
            );
          },
          child: Text(OnTexts.createaccount),
        ),
      ],
    );
  }
}
